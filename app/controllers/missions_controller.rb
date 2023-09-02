class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
    @dev = Dev.last
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user_id = current_user.id
    if @mission.save!
      redirect_to step_two_path(@mission)
    else
      render :new
    end
  end

  def new_part_two
    @mission = Mission.find(params[:id])
    @langs = Language.all
  end

  def form_update_step_two
    @mission = Mission.find(params[:id])
    if @mission.save!
      redirect_to step_three_path(@mission)
    else
      render :new_part_two
    end
  end

  def new_part_three
    @mission = Mission.find(params[:id])
  end

  def form_update_step_three
    @mission = Mission.find(params[:id])
    if @mission.save!
      redirect_to step_three_path(@mission)
    else
      render :new_part_two
    end
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    if @mission.update!(mission_params)
     redirect_to match_landing_path
    end
  end

  def lmatch
    @lang = Language.all
    @mission = Mission.find(params[:id])
    @devs = Dev.all
    @last_dev = Dev.last.id + 1
    @matchable_devs = []
    @dev_score = Dev.first
    fake_dev_array = Dev.ids
    @best = fake_dev_array.first
    @dev = Dev.find(@best)
  end


  def lmatch_dev_switcher
    @mission = Mission.find(params[:id])
    @last_dev = (Dev.last.id + 1)
    if params[:query].present?
      dev_id = (params[:query].to_i)
      @best = 0
      @best = dev_id += 1
      if @best == @last_dev
        (@best = Dev.first.id)
      end
      @dev = Dev.find(@best)
    end
    respond_to do |format|
      format.text { render partial: "missions/lmatch", locals: {dev: @dev, mission: @mission}, formats: [:html] }
    end
  end

  private

  def mission_params
    params.require(:mission).permit(:name, :description, :area, :location, :start_date, :end_date, :price)
  end

  def match_devs
    @devs_count = Dev.all                         # je recupere tous mes devs
    @mission = Mission.find(params[:id])          # je recupere l'id de ma mission                                         # je cree l'array dans lequel je vais classer mes devs par points gagnés
     @devs_count.each do |dev|                   # j'itere sur tous mes dev pour ensuite comparer leurs columns a celles de la mission
       @mission.languages.each do |language|
         if language.include?(dev.language)
             dev.score =+ 5                     # j'effectue une deuxiement iteration pour comparer les languages de mission et dev
         end
        @mission.skills.each do |skill|
         if skill.include?(dev.skill)            # j'effectue une troisieme iteration pour comparer les softs de mission et dev
           dev.score =+ 3                       # si c'est commun , la column dev.point gagne 2 points sinon rien
           (@matchable-devs) << dev                # je place mon dev dans l'array de comparaison
         end
        end
       end
     end
     @matchable_devs.order_by(dev.score)         # (A REFAIRE FAUX) je classe mon array par Dev.points
    @best = @matchable_devs[0]                  # j'assigne le dev ayant le plus de points a une variable d'instance pour pouvoir le rappeler sur ma view
  end
end

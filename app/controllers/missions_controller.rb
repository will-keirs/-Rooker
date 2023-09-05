class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
    # @mission_encours = Mission.find(params[:id])
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
    @languages = Language.all
    @langs = Language.all
  end

  def form_update_step_two
    @mission = Mission.find(params[:id])
    selected_languages = params[:languages]
    selected_languages.each do |language|
      if language[1] == "1"
        Devlangmission.create(mission: @mission, language_id: language[0])
      end
    end
    if @mission.save!
      redirect_to step_three_path(@mission)
    else
      render :new_part_two
    end
  end

  def new_part_three
    @mission = Mission.find(params[:id])
    @skills = SoftSkill.all
  end

  def form_update_step_three
    @mission = Mission.find(params[:id])
    selected_skills = params[:skills]
    selected_skills.each do |skill|
      if skill[1] == "1"
        Devsoftmission.create(mission: @mission, soft_skill_id: skill[0])
      end
    end
    if @mission.save!
      redirect_to match_landing_path(@mission)
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
    @devs.each do |dev|
      @matchable_devs << dev.id
    end
    @dev_score = Dev.first
    @best = @matchable_devs.first
    @best_index = 0
    @dev = Dev.find(@matchable_devs[@best_index])
  end


  def lmatch_dev_switcher
    # @devalll = Dev.all
    # @devalll.each do |dev|
    #   @matchable_devs << dev.id
    # end
    # <<<<< Remplacer par @devall =  Dev.all.map(&:id)
    @mission = Mission.find(params[:id])

    @available_dev_ids = Dev.all.map(&:id).uniq
    @devall_selected_ids = Dev.joins(:matches).where(matches: {mission: @mission})

    unless @devall_selected_ids.empty?
      @available_dev_ids = @available_dev_ids - @devall_selected_ids
    end

    if params[:selected_dev_id].present?
      @devall_selected_ids = @devall_selected_ids.map(&:id).uniq
      @available_dev_ids = @available_dev_ids - @devall_selected_ids
      @available_dev_ids
    end

    @last_dev = (Dev.last.id + 1)
    @best_index = 0
    @matchable_devs = []

    if params[:query].present?

      dev_id = (params[:query].to_i)
      @best = 0
      @best = dev_id += 1
      @best_index = @best_index +=1

      if @best == @last_dev
        (@best = Dev.first.id)
        (@best_index = 0)
      end
      @dev = Dev.find(@available_dev_ids[@best_index])
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

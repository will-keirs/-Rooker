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
      # faire le calcul des match
      redirect_to step_two_path(@mission)
    else
      render :new
    end
  end

  def new_part_two
    @mission = Mission.find(params[:id])
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
    @mission = Mission.find(params[:id])
    @devs = Dev.all
    @last_dev = Dev.last.id + 1
    fake_dev_array = Dev.ids
  #   @devs.match_devs
    @best = fake_dev_array.first
    @dev = Dev.find(@best)
  #   respond_to do |format|
  #     if @best.change
  #       format.html { redirect_to landing_match_path(@mission) }
  #       format.json
  #     else
  #       format.html { render "lmatch/:id", status: :unprocessable_entity }
  #       format.json
  #     end
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
    @mission = Mission.find(params[:id])          # je recupere l'id de ma mission
    @matchable_devs = []                          # je cree l'array dans lequel je vais classer mes devs par points gagnés
    # @devs_count.each do |dev|                   # j'itere sur tous mes dev pour ensuite comparer leurs columns a celles de la mission
    #   @mission.languages.each do |language|
    #     if language.include?(dev.language)
    #         dev.points += 5                     # j'effectue une deuxiement iteration pour comparer les languages de mission et dev
    #      else                                   # si c'est commun , la column dev.point gagne 5 points sinon rien
    #         dev.points += 0
    #     end
    #    @mission.skills.each do |skill|
    #     if skill.include?(dev.skill)            # j'effectue une troisieme iteration pour comparer les softs de mission et dev
    #       dev.points += 3                       # si c'est commun , la column dev.point gagne 2 points sinon rien
    #       @matchable-devs << dev                # je place mon dev dans l'array de comparaison
    #     else
    #       dev.points += 0
    #     end
    #   end
    # end
    # @matchable_devs.order_by(dev.point)         # (A REFAIRE FAUX) je classe mon array par Dev.points
    # @best = @matchable_devs[0]                  # j'assigne le dev ayant le plus de points a une variable d'instance pour pouvoir le rappeler sur ma view
  end
                                                  # A: mecanique > je clique sur non -> sort le dev concerné de @matchable_devs
                                                  # => faire un IF user click on "i want you" => Match.new(user.id;dev.id;mission.id)
                                                  # si on rajoute une colonne points dans Match( Match.point = Dev.point)
                                                  # nous permet de rappeler Match.dev et les classer par nbre de points dans les favs
  # def match_params
  #   params.require(:match).permit(:comment, :dev_id, :mission_id, :accepted)
  #   @match.dev = current_user
  #   @match.mission = @mission
  #   @match.comment = ""
  # end
end

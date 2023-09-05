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
    # en mode method de class :
    # Dev.get_bests_dev_from_mission(@mission)
    ####
    @matchable_devs = Dev.get_bests_dev_from_mission(@mission) || Dev.all
    @dev_score = Dev.first
    @best = @matchable_devs.first.id
    @dev = Dev.find(@best)
    @best_index = 0
    # @dev = Dev.find(@matchable_devs[@best_index])
  end


  def lmatch_dev_switcher
    # @devalll = Dev.all
    # @devalll.each do |dev|
    #   @matchable_devs << dev.id
    # end
    # <<<<< Remplacer par @devall =  Dev.all.map(&:id)
    @mission = Mission.find(params[:id])

    ########" A DEGAGER ########
    # @available_dev_ids = Dev.all.map(&:id).uniq
    # @devall_selected_ids = Dev.get_bests_dev_from_mission(@mission)
    # @devall_selected_ids = @devall_selected_ids.map(&:id)    # return @available sans soustration ???
    #############

    @all_dev_ids_by_score =  Dev.get_bests_dev_from_mission(@mission).map(&:id).uniq
    @mission_staffed_devs = Dev.get_devs_by_mission(@mission).map(&:id).uniq

    @available_dev_ids = @all_dev_ids_by_score - @mission_staffed_devs

    unless @available_dev_ids.empty? && @available_dev_ids.length < @available_dev_ids.length
      @available_dev_ids = @all_dev_ids_by_score - @mission_staffed_devs
    end

    if params[:selected_dev_id].present?
      match_dev = Dev.find(params[:selected_dev_id])
      Match.create!(mission: @mission, dev: match_dev)
      @mission_staffed_devs = Dev.get_devs_by_mission(@mission).map(&:id).uniq
      @available_dev_ids = @available_dev_ids
      @available_dev_ids = @available_dev_ids - @mission_staffed_devs
      @available_dev_ids
    end

    @last_dev = (@available_dev_ids.last)

    if params[:query].present?
      dev_id = (params[:query].to_i)
      @best = 0
      @best = dev_id += 1
      @best_index = params[:best_index].to_i
      @best_index = @best_index += 1

      if @best == @last_dev
        (@best = Dev.first.id)
        (@best_index = 0)
      end

      unless @available_dev_ids.empty?
        @dev = Dev.find(@available_dev_ids[@best_index])
        respond_to do |format|
          format.text { render partial: "missions/lmatch", locals: {dev: @dev, mission: @mission}, formats: [:html] }
        end
      else
        redirect_to mission_matches_path(@mission)
      end
    end


  end

  private

  def mission_params
    params.require(:mission).permit(:name, :description, :area, :location, :start_date, :end_date, :price)
  end

  def match_params
    params.require(:match).permit(:comment)
  end
end

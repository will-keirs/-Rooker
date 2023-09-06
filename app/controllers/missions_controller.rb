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
    @matches = Match.all
    @lang = Language.all
    @mission = Mission.find(params[:id])
    @devs = Dev.all
    @dev_score = Dev.first


    @available_devs = Dev.get_bests_dev_for_mission(@mission) || Dev.all
    @best = @available_devs.first.id
    @dev = Dev.find(@best)
    @best_index = 0
  end

  def lmatch_dev_switcher
    @mission = Mission.find(params[:id])

    if params[:selected_dev_id].present?
      matching_dev = Dev.find(params[:selected_dev_id])
      Match.create!(mission: @mission, dev: matching_dev)
    end

    @dev_ids_by_score =  Dev.get_bests_dev_for_mission(@mission).map(&:id).uniq
    @staffed_dev_ids = Dev.get_staffed_devs(@mission).map(&:id).uniq
    @available_dev_ids = @dev_ids_by_score - @staffed_dev_ids

    unless @available_dev_ids.empty?
      if params[:best_index].present?
        @best_index = params[:best_index].to_i
        @best_index = @best_index += 1
      end

      if @best_index > (@available_dev_ids.size-1)
        @best_index = 0
      end

      @dev = Dev.find(@available_dev_ids[@best_index])
      respond_to do |format|
        format.text { render partial: "missions/lmatch", locals: {dev: @dev, mission: @mission}, formats: [:html] }
      end
    else
      respond_to do |format|
        format.text { render partial: "missions/no_more", locals: {dev: @dev, mission: @mission}, formats: [:html] }
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

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
    @devs = Dev.all
    @mission = Mission.last
    # @match = Match.find(params[:id])
    # @match.mission = @mission
  end
  private

  def mission_params
    params.require(:mission).permit(:name, :description, :area, :location, :start_date, :end_date, :price)
  end

  # def match_params
  #   params.require(:match).permit(:comment, :dev_id, :mission_id, :accepted)
  #   @match.dev = current_user
  #   @match.mission = @mission
  #   @match.comment = ""
  # end
end

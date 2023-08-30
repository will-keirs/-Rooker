class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user_id = current_user.id
    @mission.save!
    # faire le calcul des match
    redirect_to match_landing_path
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
    redirect_to match_landing_path
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

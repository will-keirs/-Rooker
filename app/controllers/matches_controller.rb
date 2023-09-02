class MatchesController < ApplicationController
  def index
    @mission = Mission.find(params[:mission_id])
    @matches = @mission.matches
  end

  def show
    @match = Match.find(params[:id])
    @mission = @match.mission
    @matches = @mission.matches
  end

  def new
    @mission = Mission.find(params[:mission_id])
    @match = Match.new
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @match = Match.new(match_params)
    @match.user = current_user
    @match.mission = @mission
    @match.save!
  end

  private

  def match_params
    params.require(:match).permit(:comment)
  end

  def mission_params
    params.require(:mission).permit(:name, :description, :area, :location, :start_date, :end_date, :price)
  end
end

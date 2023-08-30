class MatchesController < ApplicationController
  def index
    @clara = Mission.find(16)
    @mission = Mission.last
    @matches = Match.all
  end

  def show
    @mission = Mission.find(params[:id])
    @match = Match.find(params[:id])
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
end

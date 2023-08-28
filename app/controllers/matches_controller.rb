class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @match = Match.new(match_params)
    @match.user = current_user
    @match.mission = @mission
    @match.save!
  end
end

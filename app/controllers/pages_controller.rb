class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @devs = Dev.all
  end

  def profile
    @missions = current_user.missions
    @matches = current_user.matches
  end

  def show
  end

  def edit
  end

  def dashboard
    @mission = Mission.new
    @missions = Mission.all
  end

  def rematch
  end

  def lmatch
    @devs = Dev.all
    @mission = Mission.last
    @match = Match.find(params[:id])
    @match.mission = @mission
  end

end

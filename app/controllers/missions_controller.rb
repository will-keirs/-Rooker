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
    @mission.save!
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  private

  def mission_params
    params.require(:mission).permit(:name, :language, :soft_skill, :area, :location, :start_date, :end_date, :price)
  end
end

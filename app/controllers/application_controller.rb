class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def custom
    @user = User.find(params[:id])
    @missions = @user.missions
  end
end

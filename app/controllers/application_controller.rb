class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  before_action :authenticate_user!

  def custom
    @user = User.find(params[:id])
    @missions = @user.missions
  end
end

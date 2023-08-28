class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
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
  end

end

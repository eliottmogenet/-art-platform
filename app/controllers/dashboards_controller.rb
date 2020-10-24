class DashboardsController < ApplicationController

  def index
    @user = current_user
    @tours = @user.tours.all
  end
end

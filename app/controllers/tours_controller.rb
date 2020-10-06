class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
   @tour = Tour.new
  end

  # def create
  #   @tour = Project.new(params_project)
  #   @tour.guide = current_user
  # end
private

end

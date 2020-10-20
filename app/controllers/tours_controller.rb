class ToursController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    @user = current_user
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

  def create
    @tour = Tour.new(params_tour)
    @tour.user = current_user

    if @tour.save!

      redirect_to paintings_path
    else
      render :new
    end
  end

private
  def params_tour
    params.require(:tour).permit(:title, :description, :languages, :paintings)
  end
end

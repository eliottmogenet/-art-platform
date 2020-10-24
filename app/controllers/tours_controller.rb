class ToursController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    @user = current_user

    @first_painting = @tour.tour_paintings.first.painting
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    @tour.update(params_tour)

    # no need for app/views/restaurants/update.html.erb
    redirect_to tour_path(@tour)
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

  def published
    @tour = Tour.find(params[:id])
    @tour.published = true
    @tour.save
    redirect_to dashboards_path
  end

private
  def params_tour
    params.require(:tour).permit(:title, :description, :languages, :painting_id, :tour_painting_id, :photo, :video)
  end
end

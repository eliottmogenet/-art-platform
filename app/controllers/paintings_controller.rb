class PaintingsController < ApplicationController

  def index
  @paintings = Painting.all
end

  def show
    @painting = Painting.find(params[:id])
    @tour = Tour.last

    @tour_painting = TourPainting.new
    @tour_painting.painting = @painting
    @user = current_user
    @tour_painting.tour = @user.tours.last

    @tour_painting.save!
  end

  def update
    redirect_to paintings_path
  end
end

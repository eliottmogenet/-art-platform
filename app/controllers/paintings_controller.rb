class PaintingsController < ApplicationController

  def index
  @paintings = Painting.all
  @user = current_user
  @tour = @user.tours.last
end

  def show
    @painting = Painting.find(params[:id])

    @user = current_user
    @tour = @user.tours.last

    @tour_painting = TourPainting.new
    @tour_painting.painting = @painting
    @tour_painting.tour = @tour

    @tour_painting.save!
    end
  end

class TourpaintingsController < ApplicationController
  def new
    @tour_painting = TourPainting.new
    @paintings = Painting.all
  end

  def create
    @tour_painting = TourPainting.new(tour_painting_params)
    @user = current_user
    @tour_painting.tour = @user.tours.last

    if @tour_painting.save!
      redirect_to tours_path
    else
      render :new
    end
  end


  private
    def tour_painting_params
    params.require(:tour_painting).permit(:tour_id, :painting_id, :video)
  end
end

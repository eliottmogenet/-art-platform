class TourPainting < ApplicationRecord
  belongs_to :tour
  belongs_to :painting
  has_one_attached :video
end

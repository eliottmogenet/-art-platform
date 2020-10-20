class Painting < ApplicationRecord
  has_many :tour_paintings
  has_one_attached :photo
end

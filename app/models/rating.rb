class Rating < ApplicationRecord
  belongs_to :tours
  belongs_to :guides
end

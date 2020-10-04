class Rating < ApplicationRecord
  belongs_to :tours, dependent: :destroy
  belongs_to :customers
end

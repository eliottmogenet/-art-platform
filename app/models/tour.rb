class Tour < ApplicationRecord

  LANGUAGE = ['French 🇫🇷','English 🇬🇧', 'Spanish 🇪🇸']

  belongs_to :user
  has_many :tour_paintings
  has_many :ratings
  has_many :paintings, through: :tour_paintings

  # validates :title, :description, presence: true
  # validates :title, uniqueness: true
end

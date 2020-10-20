class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ROLE = ['Guide']

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :ratings
  has_many :tours
  has_one_attached :photo
  validates :first_name, :last_name, presence: true
end

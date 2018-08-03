class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end

class Costume < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :image, uniqueness: true, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true
end

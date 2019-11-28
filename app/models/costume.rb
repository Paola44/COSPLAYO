class Costume < ApplicationRecord
  mount_uploader :image, PhotoUploader

  has_many :reservations, dependent: :destroy
  belongs_to :user

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end

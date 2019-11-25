class Reservation < ApplicationRecord
  belongs_to :costume
  belongs_to :user

  validates :starting_date, presence: true
  validates :ending_date, presence: true
end

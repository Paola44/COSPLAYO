class User < ApplicationRecord
  has_many :reservations
  has_many :costumes
  has_many :owner_reservations, through: :costumes, source: :reservations

  validates :first_name, uniqueness: { scope: :last_name }
  validates :email, uniqueness: true, presence: true
  validates :avatar_url, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

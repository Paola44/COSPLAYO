class User < ApplicationRecord
  has_many :reservations
  has_many :costumes, dependent: :destroy
  has_many :owner_reservations, through: :costumes, source: :reservations, dependent: :destroy

  validates :first_name, uniqueness: { scope: :last_name }
  validates :email, uniqueness: true, presence: true
  # validates :avatar, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

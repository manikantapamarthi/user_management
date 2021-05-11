class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address, dependent: :destroy
  enum role: [:admin, :user]
  accepts_nested_attributes_for :address, allow_destroy: true
  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
end

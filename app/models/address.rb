class Address < ApplicationRecord
  belongs_to :user
  validates :city, :state, :pincode, presence: true
end

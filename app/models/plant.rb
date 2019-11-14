class Plant < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  has_one_attached :picture
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :price_per_day, numericality: true
end

class Bonzai < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :species, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_day, format: { with: /\A\d+(\.\d{1,2})?\z/ }
  validates :price_per_day, numericality: { greater_than: 0 }
end

class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :descriptiom, presence: true
  validates :price, numericality: {greater_than: 0.0}
  validates :category, presence: true

  mount_uploader :photo, ProductPhotoUploader
end

class Picture < ApplicationRecord
  validates :image, presence: true
  validates :description, length: { maximum: 100 }
  mount_uploader :image, PictureUploader
end

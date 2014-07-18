class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :page_name, presence: true
  validates :image, presence: true
end

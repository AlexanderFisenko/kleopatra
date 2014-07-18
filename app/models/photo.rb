class Photo < ActiveRecord::Base
  extend Enumerize
  mount_uploader :image, ImageUploader

  enumerize :page_name, in: %w[галерея отзывы]

  validates :page_name, presence: true
  validates :image, presence: true
end

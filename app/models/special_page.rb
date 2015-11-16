class SpecialPage < ActiveRecord::Base
  extend Enumerize
  mount_uploader :image, ImageUploader

  enumerize :url, in: %w(show_presenters decorators photographers videographers stylists candy_makers sales)

  validates_presence_of :url
end

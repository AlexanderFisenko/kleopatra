#encoding: UTF-8
class GalleryController < ApplicationController
  def index
    @photos = Photo.where(page_name: "gallery").order(id: :asc)
    
  end
end

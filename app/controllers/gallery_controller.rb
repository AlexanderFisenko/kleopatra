#encoding: UTF-8
class GalleryController < ApplicationController
  def index
    @photos = Photo.where(page_name: "gallery").order(id: :asc)
    set_meta_tags title: 'Фотогалерея', description: "Фотографии банкетного зала Банкет холл Клеопатра"
  end
end

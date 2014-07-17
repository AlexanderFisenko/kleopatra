#encoding: UTF-8
class GalleryController < ApplicationController
  def index
    @photos = Photo.all.order(id: :asc)
    set_meta_tags title: 'Фотогалерея', description: "Фотографии банкетного зала Банкет холл Клеопатра"
  end
end

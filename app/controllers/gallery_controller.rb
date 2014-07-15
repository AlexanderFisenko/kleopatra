#encoding: UTF-8
class GalleryController < ApplicationController
  def index
    set_meta_tags title: 'Фотогалерея'
  end
end

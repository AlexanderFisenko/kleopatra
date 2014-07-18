#encoding: UTF-8
class FeedbackController < ApplicationController
  def index
    @photos = Photo.where(page_name: "отзывы").order(id: :asc)
    set_meta_tags title: 'Отзывы', description: "Отзывы и комментарии о Банкет холл Клеопатра"
  end
end

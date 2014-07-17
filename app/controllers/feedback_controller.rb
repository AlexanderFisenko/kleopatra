#encoding: UTF-8
class FeedbackController < ApplicationController
  def index
    set_meta_tags title: 'Отзывы', description: "Отзывы и комментарии о Банкет холл Клеопатра"
  end
end

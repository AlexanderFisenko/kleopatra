#encoding: UTF-8
class FeedbackController < ApplicationController
  def index
    @photos = Photo.where(page_name: "feedback").order(id: :asc)
    
  end
end

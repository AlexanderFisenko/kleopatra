#encoding: UTF-8
class HallsController < ApplicationController

  def egyptian_hall
  	set_meta_tags title: 'Египетский зал'
  end

  def mirror_hall
  	set_meta_tags title: 'Зеркальный зал'
  end

end

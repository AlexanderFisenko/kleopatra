#encoding: UTF-8
class HallsController < ApplicationController

  def egyptian_hall
  	set_meta_tags title: 'Египетский зал', description: "Банкетный зал в Египетском стиле – Банкет холл Клеопатра"
  end

  def mirror_hall
  	set_meta_tags title: 'Зеркальный зал', description: "Зеркальный банкетный зал для выездной регистрации в Магнитогорске"
  end

end

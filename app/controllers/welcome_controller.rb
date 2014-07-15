#encoding: UTF-8
class WelcomeController < ApplicationController
  def index
    set_meta_tags title: 'О нас', description: "Свадьбы, банкеты в Магнитогорске, банкет-холл Клеопатра"
  end

  def advantages
    set_meta_tags title: 'Наши преимущества'
  end

  def wedding
    set_meta_tags title: 'Свадьба'
  end

  def anniversary
    set_meta_tags title: 'Юбилей'
  end

  def corporate
    set_meta_tags title: 'Корпоративное мероприятие'
  end

  def prom
    set_meta_tags title: 'Выпускной вечер'
  end
end

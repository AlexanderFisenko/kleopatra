#encoding: UTF-8
class WelcomeController < ApplicationController
  def index
    @friday_1_date = Text.find_by(key: "friday_1_date").text
    @friday_2_date = Text.find_by(key: "friday_2_date").text
    @saturday_1_date = Text.find_by(key: "saturday_1_date").text
    @saturday_2_date = Text.find_by(key: "saturday_2_date").text

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

#encoding: UTF-8
class WelcomeController < ApplicationController
  def index
    @friday_1_date = Text.find_by(key: "friday_1_date").text
    @friday_2_date = Text.find_by(key: "friday_2_date").text
    @saturday_1_date = Text.find_by(key: "saturday_1_date").text
    @saturday_2_date = Text.find_by(key: "saturday_2_date").text

    set_meta_tags title: 'О нас', description: "Описание банкетного зала Банкет холл Клеопатра в Магнитогорске"
  end

  def advantages
    set_meta_tags title: 'Наши преимущества', description: "Преимущества банкетного зала Банкет холл Клеопатра"
  end

  def wedding
    set_meta_tags title: 'Свадьба', description: "Свадьба в банкетном зале в Магнитогорске"
  end

  def anniversary
    set_meta_tags title: 'Юбилей', description: "Юбилей в банкетном зале в Магнитогорске"
  end

  def corporate
    set_meta_tags title: 'Корпоративное мероприятие', description: "Новогодний корпоратив в Банкет холл Клеопатра в Магнитогорске"
  end

  def prom
    set_meta_tags title: 'Выпускной вечер', description: "Банкетный зал для проведения выпускного вечера в Магнитогорске"
  end
end

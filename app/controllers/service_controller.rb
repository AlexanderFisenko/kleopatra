#encoding: UTF-8
class ServiceController < ApplicationController

  def order
    set_meta_tags title: 'Заказ банкета', description: "Организация и заказ банкета в Магнитогорске"
  end

  def reservation
    set_meta_tags title: 'Бронирование даты', description: "Забронировать банкетный зал в Магнитогорске"
  end

  def food_menu
    set_meta_tags title: 'Меню', description: "Банкетное меню Магнитогорск"
  end

  def serving
    set_meta_tags title: 'Сервировка', description: "Оформление банкетного зала в Магнитогорске"
  end

  def service
  	set_meta_tags title: 'Обслуживание', description: "Обслуживание банкетов в Магнитогорске"
  end

  def additional_service
    set_meta_tags title: 'Дополнительный сервис', description: "Обслуживание банкетов в Магнитогорске"
  end

  def sales
    @pages = SpecialPage.where(url: :sales)
    set_meta_tags title: 'Акции', description: "Стоимость банкета в Магнитогорске"
  end
end

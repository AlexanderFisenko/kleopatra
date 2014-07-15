#encoding: UTF-8
class ServiceController < ApplicationController

  def order
  	set_meta_tags title: 'Заказ банкета'
  end

  def reservation
  	set_meta_tags title: 'Бронирование даты'
  end

  def serving
  	set_meta_tags title: 'Сервировка'
  end

  def service
  	set_meta_tags title: 'Обслуживание'
  end
end

#encoding: UTF-8
module ApplicationHelper
  def set_meta_tags_for_special_page(special_page)
    case special_page.url
    when 'show_presenters'
      description = "Ведущие Магнитогорска в Банкет-Холл Клеопатре"
    when 'decorators'
      description = "Декораторы Магнитогорска в Банкет-Холл Клеопатре"
    when 'photographers'
      description = "Фотографы Магнитогорска в Банкет-Холл Клеопатре"
    when 'videographers'
      description = "Видеографы Магнитогорска в Банкет-Холл Клеопатре"
    when 'stylists'
      description = "Стилисты Магнитогорска в Банкет-Холл Клеопатре"
    when 'candy_makers'
      description = "Кондитеры Магнитогорска в Банкет-Холл Клеопатре"
    end

    set_meta_tags(title:  t("enumerize.special_page.url.#{special_page.url}"), description: description)
  end
end

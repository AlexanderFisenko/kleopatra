# encoding: UTF-8
ActiveAdmin.register SpecialPage do
  permit_params :image, :content, :url

  form do |f|
    f.inputs "My Model Name" do
      f.input :content, label: "Содержание", as: :html_editor
      f.input :image, label: "Картинка"
      f.input :url, as: :select, collection: SpecialPage.url.options, label: "Раздел"
      f.actions
    end 
  end
end

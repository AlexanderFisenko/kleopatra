namespace :init do
  task special_pages: :environment do
    SpecialPage.destroy_all

    SpecialPage.url.values.each do |url|
      SpecialPage.create!(url: url)
    end
  end
end

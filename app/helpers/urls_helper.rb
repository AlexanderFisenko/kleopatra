module UrlsHelper
  def recommendations_path(special_page)
    super(url: special_page.url)
  end
end

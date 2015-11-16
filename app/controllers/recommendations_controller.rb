#encoding: UTF-8
class RecommendationsController < ApplicationController
  include ApplicationHelper

  def index
    @pages     = SpecialPage.where(url: params[:url])
    @example = SpecialPage.find_by(url: params[:url])
    set_meta_tags_for_special_page(@example)
  end
end

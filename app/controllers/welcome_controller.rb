#encoding: UTF-8
class WelcomeController < ApplicationController
  def index
    @friday_1_date = Text.find_by(key: "friday_1_date").text
    @friday_2_date = Text.find_by(key: "friday_2_date").text
    @saturday_1_date = Text.find_by(key: "saturday_1_date").text
    @saturday_2_date = Text.find_by(key: "saturday_2_date").text

    
  end

  def advantages
    
  end

  def wedding
    
  end

  def anniversary
    
  end

  def corporate
    
  end

  def prom
    
  end
end

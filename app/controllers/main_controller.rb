class MainController < ApplicationController 
  
  before_filter :to_index_page!, :only => :welcome 
  before_filter :to_welcome_page!, :only => :index
  
  def index
  end
  
  def welcome
  end

end

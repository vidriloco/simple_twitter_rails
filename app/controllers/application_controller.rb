class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def to_welcome_page!
    render :action => :welcome if user_signed_in? 
  end
  
  def to_index_page!
    render :action => :index if !user_signed_in? 
  end
end

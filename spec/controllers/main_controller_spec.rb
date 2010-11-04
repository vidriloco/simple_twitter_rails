require 'spec_helper'
include Devise::TestHelpers

describe MainController do
  
  before(:each) do
    @mock_user = mock_model(User).as_null_object
  end
  
  context "user already logged in" do
    
    before(:each) do
      # mock up an authentication in the underlying warden library
      request.env['warden'] = mock(Warden, :authenticate => @mock_user, 
                                           :authenticate! => @mock_user, 
                                           :authenticate? => true)
    end
    
    
    it "should be redirected to the welcome page if trying to visit the index" do
      get :index
      response.should render_template(:welcome)
    end

  end
  
  context "user is not logged in" do
    
    before(:each) do
      request.env['warden'] = mock(Warden, :authenticate => @mock_user, 
                                           :authenticate! => @mock_user, 
                                           :authenticate? => false)
    end

    it "should be redirected to the index page for loggin in" do
      get :welcome
      response.should render_template(:index)
    end
    
  end
end

require 'spec_helper'

describe UsersController do
	render_views
	
	#/!\ Also defined in pages_controller_spec.rb and other spec
	before(:each) do
		@base_title = "My project"
	end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have right title" do
		get 'new'
		response.should have_selector('title', :content =>@base_title+' | Register')
	end
  end

end

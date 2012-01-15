require 'spec_helper'

describe PagesController do
	render_views 
	
  describe "GET 'home'" do
  	it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have right title" do
				get 'home'
				response.should have_selector("title", 
										:content => "My project | Home")
		end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
		end
		
		#Checking title
		it "should have right title" do
			get 'contact'
			response.should have_selector("title", :content=>"My project | Contact")
		end
		
   end

	describe "GET 'about'" do
		it "should be successful" do
			get 'about'
			response.should be_success
		end		
	end
	
end

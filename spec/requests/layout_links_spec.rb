require 'spec_helper'

describe "LayoutLink" do
	
	#/!\ Also defined in pages_controller_spec.rb
	before(:each) do
		@base_title = "My project"
	end
	
	it "should find a home page on '/'" do
		get '/'
		response.should have_selector('title', :content => @base_title+" | Home")
	end
	
	it "should find a contact page on '/contact'" do
		get '/contact'
		response.should have_selector('title', :content => @base_title+" | Contact")
	end
	
	it "should find an about page on '/about'" do
		get '/about'
		response.should have_selector('title', :content => @base_title+" | About")
	end
	
	it "should find an help page on '/help'" do
		get '/help'
		response.should have_selector('title', :content => @base_title+' | Help')
	end
end

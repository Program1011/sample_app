require 'spec_helper'

describe PagesController do
  render_views		

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  
    it "Shoul have the right title" do
    	get 'home'
    	response.should have_selector("title",
      					:content => "Ruby on Rails Tutorial Sample App | Home")
  end  					
end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "Shoul have the right title" do
    	get 'contact'
    	response.should have_selector("title",
      					:content => "Ruby on Rails Tutorial Sample App | Contact")
  end      					
end

  describe "GET 'users'" do
    it "should be successful" do
      get 'users'
      response.should be_success
    end
    
    it "Shoul have the right title" do
    	get 'users'
    	response.should have_selector("title",
      					:content => "Ruby on Rails Tutorial Sample App | Users")
    end
  end  
end

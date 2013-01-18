require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
	it "should have the right title" do
	  visit '/static_pages/home'
	  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
	end
	it "should have the h1 'Sample App'" do
	  visit '/static_pages/home'
	  page.should have_selector('h1', :text => 'Sample App')
    end
  end

  describe "Help Page" do
	it "should have the right title" do
	  visit '/static_pages/help'
	  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
	end
	it "should have the h1 'Help'" do
	  visit '/static_pages/help'
	  page.should have_selector('h1', :text => 'Help')
	end
  end

  describe "About Page" do
	it "should have the right title" do
	  visit '/static_pages/about'
	  page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
	end
	it "should have the h1 'About Us'" do
	  visit '/static_pages/about'
	  page.should have_selector('h1', :text => 'About Us')
	end
  end


end

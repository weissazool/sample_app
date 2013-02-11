require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
	it "should have the base title" do
	  visit root_path
	  page.should have_selector('title', :text => "#{base_title}")
	end
	it "should not have a custom title" do
	  visit root_path
	  page.should_not have_selector('title', :text => " | Home")
	end
	it "should have the h1 'Sample App'" do
	  visit root_path
	  page.should have_selector('h1', :text => 'Sample App')
    end
  end

  describe "Help Page" do
	it "should have the right title" do
	  visit help_path
	  page.should have_selector('title', :text => "#{base_title} | Help")
	end
	it "should have the h1 'Help'" do
	  visit help_path
	  page.should have_selector('h1', :text => 'Help')
	end
  end

  describe "About Page" do
	it "should have the right title" do
	  visit about_path
	  page.should have_selector('title', :text => "#{base_title} | About Us")
	end
	it "should have the h1 'About Us'" do
	  visit about_path
	  page.should have_selector('h1', :text => 'About Us')
	end
  end

  describe "Contact Page" do
	it "should have the right title" do
	  visit contact_path
	  page.should have_selector('title', :text => "#{base_title} | Contact Us")
	end
	it "should have the h1 'Contact Us'" do
	  visit contact_path
	  page.should have_selector('h1', :text => 'Contact Us')
	end
  end

end




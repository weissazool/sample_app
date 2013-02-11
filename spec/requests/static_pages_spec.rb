require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home Page" do
	before { visit root_path }
	
	it { should have_selector('title', text: full_title('')) }
	it { should have_selector('h1', text: 'Sample App') }
  end

  describe "Help Page" do
	before { visit help_path }
	it { should have_selector('title', text: full_title('Help')) }
	it { should have_selector('h1', text: 'Help') }
  end

  describe "About Page" do
	before { visit about_path }
	it { should have_selector('title', text: full_title('About Us')) }
	it { should have_selector('h1', text: 'About Us') }
  end

  describe "Contact Page" do
	before { visit contact_path }
	it { should have_selector('title', text: full_title('Contact Us')) }
	it { should have_selector('h1', text: 'Contact Us') }
  end

end




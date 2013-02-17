require 'spec_helper'

describe "Static Pages" do

  subject { page }

  shared_examples_for "all static pages" do
	it { should have_selector('title', text: full_title(page_title)) }
	it { should have_selector('h1', text: heading) }
  end

  describe "Home Page" do
	before { visit root_path }
	let(:page_title) { '' }
	let(:heading)	{ 'Sample App' }
	
	it_should_behave_like "all static pages"
	it { should_not have_selector('title', text: '| Home') }
  end

  describe "Help Page" do
	before { visit help_path }
	let(:page_title) { 'Help' }
	let(:heading)	{ 'Help' }
	
	it_should_behave_like "all static pages"
  end

  describe "About Page" do
	before { visit about_path }
	let(:page_title) { 'About Us' }
	let(:heading)	{ 'About Us' }
	
	it_should_behave_like "all static pages"
  end

  describe "Contact Page" do
	before { visit contact_path }
	let(:page_title) { 'Contact Us' }
	let(:heading)	{ 'Contact Us' }
	
	it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
	visit root_path
	click_link "About"
	page.should have_selector 'title', text: full_title("About Us")
	click_link "Help"
	page.should have_selector 'title', text: full_title("Help")
	click_link "Contact"
	page.should have_selector 'title', text: full_title("Contact Us")
	click_link "Home"
	page.should have_selector 'title', text: full_title('')
	page.should_not have_selector 'title', text: "Home"
	click_link "Sign up now!"
	page.should have_selector 'title', text: full_title("Sign up")
	click_link "sample app"
	page.should have_selector 'title', text: full_title('')
	page.should_not have_selector 'title', text: "Home"
  end

end




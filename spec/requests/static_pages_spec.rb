require 'spec_helper'

describe "Static pages" do
  
  describe "about page" do
    it "should have select h1 with text 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end 
    it "should not have h5 with text 'Buttocks'" do
      visit '/static_pages/about'
      page.should_not have_selector('h5', :text => 'Buttocks')
    end    
    it "should have select title with text 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About')
    end    
  end
  
    describe "contact page" do
    it "should have select h1 with text 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end    
    it "should have select title with text 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Contact')
    end    
  end
  
  describe "home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end 
    it "should have select title with text 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Home')    
    end
  end
  
  describe "help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end 
    it "should have select title with text 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help')    
    end    
  end
  
end

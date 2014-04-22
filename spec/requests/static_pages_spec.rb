require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Log in to'" do
      visit '/' # using capybara's visit
      expect(page).to have_content('Log in to')
    end
  end

  describe "About Page" do
      it "should have the content 'Gameorama has been developed'" do
         visit '/about'
         expect(page).to have_content('Gameorama has been developed')
      end
  end

  describe "Location" do
    it "should have the content 'You can locate us at'" do
       visit '/location'
       expect(page).to have_content('You can locate us at') 
    end
  end
end

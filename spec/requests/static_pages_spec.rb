require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Log in to'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/' # using capybara
      expect(page).to have_content('Log in to')
    end
  end
end

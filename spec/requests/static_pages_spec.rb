require 'spec_helper'

describe "StaticPages" do

  describe "StoryEngine" do

    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end

    it "should have the content 'Story Engine'" do
      	visit '/static_pages/home'
      	page.should have_content('Story Engine')

    end

    it "should have the right title 'Story Engine'" do
      	visit '/static_pages/home'
      	page.should have_selector('title', :text => "Story Engine > | Home")
      	
    end
  end

   describe "Help" do
	    it "should have the content 'Help'" do
	      	visit '/static_pages/help'
	      	page.should have_content('Help')
	    end

	    it "should have h1 'Help'" do
	    	visit '/static_pages/help'
	    	page.should have_selector('h1', :text => "Help")

	    end
	end

	describe "About" do
		it "Should have content 'About'" do
			visit '/static_pages/about'
			page.should have_content('About')
		end

		it "should have h1 'About'" do
	    	visit '/static_pages/about'
	    	page.should have_selector('h1', :text => "About")

	    end
	end

end

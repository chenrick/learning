require 'spec_helper'

describe "StaticPages" do
  subject {page}
  
  describe "StoryEngine" do
  
    before { visit root_path }
  
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  
  #Short hand for Rspec
  
    it { should have_content('Story Engine') }
    it { should have_selector('title', text: full_title('')) }
    
  end

   describe "Help" do
     
      before { visit help_path }
      
	    it "should have the content 'Help'" do
	      	page.should have_content('Help')
	    end

	    it "should have h1 'Help'" do
	    	page.should have_selector('h1', :text => "Help")

	    end
	end

	describe "About" do
	  
	  before { visit about_path }
	  
		it "Should have content 'About'" do
			page.should have_content('About')
		end

		it "should have h1 'About'" do
	    	page.should have_selector('h1', :text => "About")

	    end
	end
	
	describe "Contact" do
	  
	  before { visit contact_path }
	  
    it "Should have content 'Contact'" do
      page.should have_content('Contact')
    end

    it "should have h1 'Contact'" do
        page.should have_selector('h1', :text => "Contact")

      end
  end

end

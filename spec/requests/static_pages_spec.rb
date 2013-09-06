require 'spec_helper'

describe "StaticPages" do
	describe "home page" do
		it "should be titled Home" do
			visit '/static_pages/home'
			expect(page).to have_title('Home')
		end
		it "should  contain index" do
			visit '/static_pages/home'
			expect(page).to have_content('Index')
		end
	end
	describe "aorb page" do
		it "should be titled Play" do
			visit '/static_pages/aorb'
			expect(page).to have_title('Play')
		end
	end
	describe "feedback page" do
		it "should be titled Result" do
			visit '/static_pages/feedback'
			expect(page).to have_title('Result')
		end
	end
	describe "help page" do
		it "should be titled Help" do
			visit '/static_pages/help'
			expect(page).to have_title('Help')
		end
	end
	describe "about page" do
		it "should be titled About" do
			visit '/static_pages/about'
			expect(page).to have_title('About')
		end
	end
end

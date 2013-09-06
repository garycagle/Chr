require 'spec_helper'

describe "StaticPages" do
	describe "home page" do
		it "should contain Chr" do
			visit '/static_pages/home'
			expect(page).to have_content('Chr')
		end
	end
	describe "help page" do
		it "should contain Chr" do
			visit '/static_pages/home'
			expect(page).to have_content('Help')
		end
	end
	describe "aorb page" do
		it "should contain Chr" do
			visit '/static_pages/home'
			expect(page).to have_content('Play')
		end
	end
	describe "feedback page" do
		it "should contain Chr" do
			visit '/static_pages/home'
			expect(page).to have_content('Result')
		end
	end
	describe "about page" do
		it "should contain Chr" do
			visit '/static_pages/home'
			expect(page).to have_content('About')
		end
	end
end

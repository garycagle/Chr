require 'spec_helper'

describe "StaticPages" do

	subject {page}  # permits the 'it' syntax vs. 'expect'

	describe "home page" do
		before{	visit home_path }

		it {should have_content('history')}
		it {should have_content('Index')}
		it {should_not have_title('Home')}
	end

	describe "Challenge page" do
		it "should be titled Challenge" do
			visit challenge_path
			expect(page).to have_title('Challenge')
		end
	end

	describe "feedback page" do
		it "should be titled Result" do
			visit feedback_path
			expect(page).to have_title('Result')
		end
	end
	# describe "help page" do
	# 	it "should be titled Help" do
	# 		visit '/static_pages/help'
	# 		expect(page).to have_title('Help')
	# 	end
	# end
	describe "about page" do
		it "should be titled About" do
			visit about_path
			expect(page).to have_title('About')
		end
	end
end

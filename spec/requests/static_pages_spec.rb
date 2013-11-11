require 'spec_helper'

describe "StaticPages" do

	subject {page}
	describe "Challenge page" do
		 #before{ visit challenge_path }
		 pending ("provide for testing item delivery after db rspec")
		# it "should have_content('Challenge')}" do
		# 	visit '/challenge'
		# 	expect (page).to have_content('Alaska')
		# it {should have_content('Alaska')}
		# it {should have_content('a.')} 
		# it {should have_content('b.')}
		# end
	end

	subject {page}  # permits the 'it' syntax vs. 'expect'

	describe "home page" do
		before{	visit home_path }

		it {should have_content('history')}
		it {should have_content('Index')}
		it {should_not have_title('Home')}
		it {should have_title('home')}
	end

	describe "feedback page" do
		it "should be titled Result" do
			visit feedback_path
			expect(page).to have_title('Result')
		end
	end
	describe "help page" do
		it "should be titled Help" do
			visit help_path
			expect(page).to have_title('Help')
		end
	end
	describe "about page" do
		it "should be titled About" do
			visit about_path
			expect(page).to have_title('About')
		end
	end
end

require 'spec_helper'
include ApplicationHelper
# require File.expand_path('../../../app/helpers/application_helper', __FILE__)

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
describe ApplicationHelper do
	describe "full_title" do
		it "decorates browser title field" do
			ApplicationHelper::full_title("xxx").should_not == "xxx"
		end
	end


  describe "Random record selector" do
  	it "returns empty array on zero" do
  		ApplicationHelper::rand_indexes(0, 4).should == []
  	end
  	it "returns empty array on limit error" do
  		ApplicationHelper::rand_indexes(5, 4).should == []
  	end
  	it "returns 2 elements" do
  		a = ApplicationHelper::rand_indexes(2, 4)
  		a.count.should == 2
  	end
  	it "returns 2 elements at limit" do
  		a = ApplicationHelper::rand_indexes(2, 2)
  		a.count.should == 2
  	end
  	it "returns correct 2 elements at limit" do
  		a = ApplicationHelper::rand_indexes(2, 2)
  		(a.include?(1) && a.include?(2) ).should == true
  	end
  end

  describe "2 random ordinal record ids from Event" do
  	before {@r = ApplicationHelper::rand_recs(2)}
	it "returns existing records" do
  		( @r.count ).should == true
  		# ( r[0] <= Event.count && r[1] <= Event.count ).should == true
  		# ( r[0] > 0 && r[1] > 0 ). should == true
  		# ( r[0] != r[1] ). should == true  		
  		# ( Event.exists?(r[0]) && Event.exists?(r[1]) ).should_not == nil

  	end
  end

end


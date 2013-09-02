require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'aorb'" do
    it "returns http success" do
      get 'aorb'
      response.should be_success
    end
  end

  describe "GET 'feedback'" do
    it "returns http success" do
      get 'feedback'
      response.should be_success
    end
  end

end

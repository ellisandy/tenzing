require 'spec_helper'

describe LandingsController do
  before(:each) do 
    @user = FactoryGirl.create(:user)
    @controller.stubs(:current_user).returns(@user)
  end
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end

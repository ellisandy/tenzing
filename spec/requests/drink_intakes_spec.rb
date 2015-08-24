require 'rails_helper'

RSpec.describe "DrinkIntakes", :type => :request do
  describe "GET /drink_intakes" do
    it "works! (now write some real specs)" do
      get drink_intakes_path
      expect(response).to have_http_status(200)
    end
  end
end

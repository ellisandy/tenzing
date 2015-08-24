require "rails_helper"

RSpec.describe DrinkIntakesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/drink_intakes").to route_to("drink_intakes#index")
    end

    it "routes to #new" do
      expect(:get => "/drink_intakes/new").to route_to("drink_intakes#new")
    end

    it "routes to #show" do
      expect(:get => "/drink_intakes/1").to route_to("drink_intakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/drink_intakes/1/edit").to route_to("drink_intakes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/drink_intakes").to route_to("drink_intakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/drink_intakes/1").to route_to("drink_intakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/drink_intakes/1").to route_to("drink_intakes#destroy", :id => "1")
    end

  end
end

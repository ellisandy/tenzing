require "spec_helper"

describe GroceriesController do
  describe "routing" do

    it "routes to #index" do
      get("/groceries").should route_to("groceries#index")
    end

    it "routes to #new" do
      get("/groceries/new").should route_to("groceries#new")
    end

    it "routes to #show" do
      get("/groceries/1").should route_to("groceries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/groceries/1/edit").should route_to("groceries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/groceries").should route_to("groceries#create")
    end

    it "routes to #update" do
      put("/groceries/1").should route_to("groceries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/groceries/1").should route_to("groceries#destroy", :id => "1")
    end

  end
end

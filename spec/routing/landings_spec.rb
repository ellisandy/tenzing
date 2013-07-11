describe LandingsController do
  describe "routing" do

    it "routes to welcome" do
      get("/").should route_to("landings#index")
    end

  end
end
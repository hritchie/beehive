require "spec_helper"

describe HivesController do
  describe "routing" do

    it "routes to #index" do
      get("/hives").should route_to("hives#index")
    end

    it "routes to #new" do
      get("/hives/new").should route_to("hives#new")
    end

    it "routes to #show" do
      get("/hives/1").should route_to("hives#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hives/1/edit").should route_to("hives#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hives").should route_to("hives#create")
    end

    it "routes to #update" do
      put("/hives/1").should route_to("hives#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hives/1").should route_to("hives#destroy", :id => "1")
    end

  end
end

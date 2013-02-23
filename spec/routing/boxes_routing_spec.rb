require "spec_helper"

describe BoxesController do
  describe "routing" do

    it "routes to #index" do
      get("/boxes").should route_to("boxes#index")
    end

    it "routes to #new" do
      get("/boxes/new").should route_to("boxes#new")
    end

    it "routes to #show" do
      get("/boxes/1").should route_to("boxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/boxes/1/edit").should route_to("boxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/boxes").should route_to("boxes#create")
    end

    it "routes to #update" do
      put("/boxes/1").should route_to("boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/boxes/1").should route_to("boxes#destroy", :id => "1")
    end

  end
end

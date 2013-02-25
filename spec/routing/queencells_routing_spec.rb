require "spec_helper"

describe QueencellsController do
  describe "routing" do

    it "routes to #index" do
      get("/queencells").should route_to("queencells#index")
    end

    it "routes to #new" do
      get("/queencells/new").should route_to("queencells#new")
    end

    it "routes to #show" do
      get("/queencells/1").should route_to("queencells#show", :id => "1")
    end

    it "routes to #edit" do
      get("/queencells/1/edit").should route_to("queencells#edit", :id => "1")
    end

    it "routes to #create" do
      post("/queencells").should route_to("queencells#create")
    end

    it "routes to #update" do
      put("/queencells/1").should route_to("queencells#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/queencells/1").should route_to("queencells#destroy", :id => "1")
    end

  end
end

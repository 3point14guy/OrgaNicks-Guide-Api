require "rails_helper"

RSpec.describe VegetablesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vegetables").to route_to("vegetables#index")
    end

    it "routes to #new" do
      expect(:get => "/vegetables/new").to route_to("vegetables#new")
    end

    it "routes to #show" do
      expect(:get => "/vegetables/1").to route_to("vegetables#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vegetables/1/edit").to route_to("vegetables#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vegetables").to route_to("vegetables#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vegetables/1").to route_to("vegetables#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vegetables/1").to route_to("vegetables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vegetables/1").to route_to("vegetables#destroy", :id => "1")
    end

  end
end

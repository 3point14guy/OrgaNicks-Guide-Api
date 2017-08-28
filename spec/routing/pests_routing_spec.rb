require "rails_helper"

RSpec.describe PestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pests").to route_to("pests#index")
    end

    it "routes to #new" do
      expect(:get => "/pests/new").to route_to("pests#new")
    end

    it "routes to #show" do
      expect(:get => "/pests/1").to route_to("pests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pests/1/edit").to route_to("pests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pests").to route_to("pests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pests/1").to route_to("pests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pests/1").to route_to("pests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pests/1").to route_to("pests#destroy", :id => "1")
    end

  end
end

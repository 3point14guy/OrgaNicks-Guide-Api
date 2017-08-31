require "rails_helper"

RSpec.describe DinnerAndDinersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dinner_and_diners").to route_to("dinner_and_diners#index")
    end

    it "routes to #new" do
      expect(:get => "/dinner_and_diners/new").to route_to("dinner_and_diners#new")
    end

    it "routes to #show" do
      expect(:get => "/dinner_and_diners/1").to route_to("dinner_and_diners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dinner_and_diners/1/edit").to route_to("dinner_and_diners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dinner_and_diners").to route_to("dinner_and_diners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dinner_and_diners/1").to route_to("dinner_and_diners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dinner_and_diners/1").to route_to("dinner_and_diners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dinner_and_diners/1").to route_to("dinner_and_diners#destroy", :id => "1")
    end

  end
end

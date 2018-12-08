require "rails_helper"

RSpec.describe DiocesesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dioceses").to route_to("dioceses#index")
    end

    it "routes to #new" do
      expect(:get => "/dioceses/new").to route_to("dioceses#new")
    end

    it "routes to #show" do
      expect(:get => "/dioceses/1").to route_to("dioceses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dioceses/1/edit").to route_to("dioceses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dioceses").to route_to("dioceses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dioceses/1").to route_to("dioceses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dioceses/1").to route_to("dioceses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dioceses/1").to route_to("dioceses#destroy", :id => "1")
    end

  end
end

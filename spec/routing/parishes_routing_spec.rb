require "rails_helper"

RSpec.describe ParishesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/parishes").to route_to("parishes#index")
    end

    it "routes to #new" do
      expect(:get => "/parishes/new").to route_to("parishes#new")
    end

    it "routes to #show" do
      expect(:get => "/parishes/1").to route_to("parishes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parishes/1/edit").to route_to("parishes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/parishes").to route_to("parishes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/parishes/1").to route_to("parishes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/parishes/1").to route_to("parishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parishes/1").to route_to("parishes#destroy", :id => "1")
    end

  end
end

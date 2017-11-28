require "rails_helper"

RSpec.describe SenatorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/senators").to route_to("senators#index")
    end

    it "routes to #new" do
      expect(:get => "/senators/new").to route_to("senators#new")
    end

    it "routes to #show" do
      expect(:get => "/senators/1").to route_to("senators#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/senators/1/edit").to route_to("senators#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/senators").to route_to("senators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/senators/1").to route_to("senators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/senators/1").to route_to("senators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/senators/1").to route_to("senators#destroy", :id => "1")
    end

  end
end

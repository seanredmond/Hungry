# encoding: utf-8

require "spec_helper"

describe Hungry::Dish do
  before :each do
    @client_double = double(Hungry::Client)
    @dish = Hungry::Dish.new(JSON.parse(DISH_329313), @client_double)
  end

  it "has an id" do
    @dish.id.should eq 329313
  end

  it "has a name" do
    @dish.name.should eq "AA Milk (bottle)"
  end

  it "has a description" do
    @dish.description.should be_nil
  end

  it "appeared first in 1940" do
    @dish.first_appeared.should eq 1940
  end

  it "appeared last in 1940" do
    @dish.last_appeared.should eq 1940
  end

  it "cost at most 10¢" do
    @dish.highest_price.should eq "$0.10"
  end

  it "cost at least 10¢" do
    @dish.lowest_price.should eq "$0.10"
  end

  it "appears in one menu" do
    @dish.menus_appeared.should eq 1
  end

  it "appears one time" do
    @dish.times_appeared.should eq 1
  end

  describe "#link" do
    before :each do
      @client_double = double(Hungry::Client)
      @dish = Hungry::Dish.new(JSON.parse(DISH_329313), @client_double)
    end

    it "returns a link by rel" do
      @dish.link(:index).should eq "http://menus.nypl.org/api/dishes"
    end
  end
end

require "spec_helper"

describe Hungry::Page do
  before :each do
    @client_double = double(Hungry::Client)
    @page = Hungry::Page.new(ONE_PAGE_31279, @client_double)
  end

  describe "#dishes" do
    it "returns an array of Dishes" do
      p = @page.dishes
      p.should be_an_instance_of Array
      p.first.should be_an_instance_of Hungry::Dish
    end
  end
end

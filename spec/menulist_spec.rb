require "spec_helper"

describe Hungry::MenuList do
  before :each do
    Faraday::Connection.any_instance.stub(:get).and_return(
      double(Faraday::Response, :body => MENU_LIST, :headers => HEADERS))
    @client = Hungry::Client.new("fakekey")
    @menulist = @client.menus
  end

  describe "#menus" do
    it "returns an Array of Menu objects" do
      @menulist.menus.should be_an_instance_of Array
      @menulist.menus.first.should be_an_instance_of Hungry::Menu
    end
  end
end
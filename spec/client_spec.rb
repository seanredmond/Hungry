require "spec_helper"


describe Hungry::Client do

  before :each do 
    @dish_329313_response = double(Faraday::Response, :body => DISH_329313, 
      :headers => HEADERS)
    @menu_list_response = double(Faraday::Response, :body => MENU_LIST,
      :headers => HEADERS)

  end

  describe "initialize" do
    it "returns an instance" do
      Hungry::Client.new('fakeapikey').should be_an_instance_of Hungry::Client
    end
  end

  describe "attributes" do
    before :all do
      @c = Hungry::Client.new('fakeapikey')
    end

    it "will tell you its api key" do
      @c.api_key.should eq 'fakeapikey'
    end

    it "has a rate limit data that is not set yet" do
      @c.rate_limit.should be_nil
      @c.limit_remaining.should be_nil
    end
  end

  describe "rate-limit data" do
    before :each do
      Faraday::Connection.any_instance.stub(:get).
        and_return(@menu_list_response)
      @client = Hungry::Client.new('fakeapikey')
    end

    it 'is not set until a request is made' do
      @client.rate_limit.should be_nil
      @client.limit_remaining.should be_nil
    end

    it 'is set after a request is made' do
      @client.menus
      @client.rate_limit.should eq 5000
      @client.limit_remaining.should eq 4999
    end
  end


  describe "#menu" do
    before :each do
      Hungry::Client.any_instance.stub(:get_endpoint).and_return({"x" => "y"})
      @client = Hungry::Client.new('fakeapikey')
    end

    it "returns a Hash" do
      menu = @client.menu(1000)
      menu.should be_an_instance_of Hungry::Menu
    end
  end

  describe "#dish" do
    before :each do
      Faraday::Connection.any_instance.stub(:get).
        and_return(@dish_329313_response)
      @client = Hungry::Client.new('fakeapikey')
    end

    it "returns a Dish" do
      @client.dish(1000).should be_an_instance_of Hungry::Dish
    end
  end

  describe "#menus" do
    before :each do
      Faraday::Connection.any_instance.stub(:get).
        and_return(@menu_list_response)
      @client = Hungry::Client.new('fakeapikey')
    end

    it "returns a MenuList" do
      @client.menus.should be_an_instance_of Hungry::MenuList
    end

  end
end
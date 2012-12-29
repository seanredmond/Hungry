require "hungry"

describe Hungry::Client do
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
      Faraday::Connection.any_instance.stub(:get).and_return(
        double(Faraday::Response, :body => DISH_329313)
      )
      @client = Hungry::Client.new('fakeapikey')
    end

    it "returns a Dish" do
      @client.dish(1000).should be_an_instance_of Hungry::Dish
    end
  end

end
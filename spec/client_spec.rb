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
      # @f = double("Hungry::Client")
      # @f.stub!(:get).and_return(JSON.generate({"x" => "y"}))
      # @client = double("Hungry::Client")
      # @client.stub!(:get_endpoint).and_return(JSON.generate({"x" => "y"}))
      Hungry::Client.any_instance.stub(:menu).and_return('abc')

      @client = Hungry::Client.new('fakeapikey')
    end

    it "returns a Hash" do
      menu = @client.menu(1000)
      menu.should be_an_instance_of Hash
      puts menu.inspect
      menu['x'].should eq 'asd'
    end
  end

end
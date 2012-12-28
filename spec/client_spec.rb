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
end
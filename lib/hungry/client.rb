module Hungry
  # Handles all communication with the API server
  class Client

    attr_reader :api_key

    # Create a hungry client
    #
    # @param [String] api_key Your API key. The shirt and shoes of API service
    # @return Client A new instance of Client
    def initialize(api_key)
      @api_key = api_key
    end

    # Get a menu
    # @param [Fixnum, String] id ID of the menu you'd like to see
    # @return [Menu] an instance of Menu
    def menu(id)
      Hungry::Menu.new(
        get_endpoint("http://menus.nypl.org/api/menus/#{id}"), self
      )
    end

    protected
    def get_endpoint(path)
      # full_path = "http://menus.nypl.org/api/" << path
      response = Faraday.get path, {"token" => @api_key}
      JSON.parse(response.body)
    end
  end
end
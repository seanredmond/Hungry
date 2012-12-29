module Hungry
  # Handles all communication with the API server
  class Client

    attr_reader :api_key, :rate_limit, :limit_remaining

    # Create a hungry client
    #
    # @param [String] api_key Your API key. The shirt and shoes of API service
    # @return Client A new instance of Client
    def initialize(api_key)
      @api_key = api_key
      @conn = Faraday.new
      @rate_limit = nil
      @limit_remaining = nil
    end

    # Get a menu
    # @param [Fixnum, String] id ID of the menu you'd like to see
    # @return [Menu] an instance of Menu
    def menu(id)
      Hungry::Menu.new(
        get_endpoint("http://menus.nypl.org/api/menus/#{id}"), self
      )
    end

    # Order a dish
    # @param [Fixnum, String] id ID of the dish
    # @return [Dish] an instance of Dish
    def dish(id)
      Hungry::Dish.new(
        get_endpoint("http://menus.nypl.org/api/dishes/#{id}"), self
      )
    end

    def menus
      Hungry::MenuList.new(
        get_endpoint("http://menus.nypl.org/api/menus/"), self
      )
    end

    protected
    def get_endpoint(path)
      # full_path = "http://menus.nypl.org/api/" << path
      response = @conn.get path, {"token" => @api_key}
      JSON.parse(response.body)
    end
  end
end
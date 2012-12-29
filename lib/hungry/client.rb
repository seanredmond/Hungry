module Hungry
  class Client
    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end

    def menu(id)
      Hungry::Menu.new(
        get_endpoint("http://menus.nypl.org/api/menus/#{id}"), self
      )
    end

    def get_endpoint(path)
      # full_path = "http://menus.nypl.org/api/" << path
      response = Faraday.get path, {"token" => @api_key}
      JSON.parse(response.body)
    end
  end
end
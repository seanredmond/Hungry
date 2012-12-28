module Hungry
  class Client
    attr_reader :api_key

    def initialize(api_key)
      @api_key = api_key
    end

    def menu(id)
      get_endpoint("menus/#{id}")
    end

    private
    def get_endpoint(path)
      full_path = "http://menus.nypl.org/api/" << path
      response = Faraday.get full_path, {"token" => @api_key}
      JSON.parse(response.body)
    end
  end
end
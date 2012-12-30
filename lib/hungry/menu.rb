require "Date"
module Hungry
  # A single menu

  class Menu < Resource
    def initialize(data, client)
      super(data, client)
      @pages = nil
    end

    # Retrieve the menu's id
    # @return [Fixnum] The id
    def id
      @data['id']
    end

    # Retrieve the menu's date
    # @return [Date]
    def date
      Date.new(@data['year'], @data['month'], @data['day'])
    end

    # Retrieve the menu's pages
    # @return [Array] An Array of {Page} instances
    def pages
      if @pages == nil
        @pages = @client.get_endpoint(@links[:pages])["pages"].map{
          |p|
          Page.new(p, client)
        }
      end

      return @pages
    end
  end
end

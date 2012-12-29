module Hungry
  class Menu < Resource
    def initialize(data, client)
      super(data, client)
      @pages = nil
    end

    def id
      @data['id']
    end

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

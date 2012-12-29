module Hungry
  class Page < Resource
    def initialize(data, client)
      super(data, client)
      @dishes = nil
    end
  end
end
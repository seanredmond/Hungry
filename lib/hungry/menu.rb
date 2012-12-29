module Hungry
  class Menu < Resource
    def id
      @data['id']
    end
  end
end

module Hungry
  class MenuList < Resource

    attr_reader :menus

    def initialize(data, client)
      super(data, client)
      @menus = @data['menus'].map{|m| Menu.new(m, client)}
    end
  end
end
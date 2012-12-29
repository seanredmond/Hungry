module Hungry
  class Page < Resource

    attr_reader :dishes

    def initialize(data, client)
      super(data, client)
      @dishes = load_dishes
    end

    private
    def load_dishes
      @data['dishes'].map{|d| Dish.new(d, @client)}
    end
  end
end
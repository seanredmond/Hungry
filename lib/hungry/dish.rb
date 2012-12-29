module Hungry
  class Dish < Resource

    # Retrieve the dish's id
    # @return [Fixnum] The id
    def id
      @data['id']
    end

  end
end
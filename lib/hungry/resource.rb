module Hungry
  class Resource
    def initialize(data, client)
      @data = data
      @client = client
    end

    def client
      @client
    end

    def method_missing name, *args
      name = name.to_s
      if args.empty? && @data.keys.include?(name)
        return @data[name]
      end
      raise NoMethodError, "undefined method `#{name}' for #{self}"
    end
  end
end

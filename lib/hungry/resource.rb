module Hungry
  class Resource
    def initialize(data, client)
      @data = data
      @client = client
      @links = get_links
    end

    def client
      @client
    end

    def link(rel)
      return @links[rel]
    end

    def method_missing name, *args
      name = name.to_s
      if args.empty? && @data.keys.include?(name)
        return @data[name]
      end
      raise NoMethodError, "undefined method `#{name}' for #{self}"
    end

    private
    def get_links
      if @data.keys.include?('links')
        # Too laconic? The inner map takes a list of hashes, each specifying a
        # 'rel' and an 'href' and converts it to a list of hashes where the
        # keys are the values of 'rel' (converted to symbols) and the values 
        # the values of 'href'. E.g. {'rel' => 'value', 'href' => 'url'} 
        # becomes {:value => 'url'}
        #
        # The outer map takes this list of hashes and merges it into a single
        # hash. it also assumes that there is only one of each 'rel' type in
        # the original hash
        #
        # Outer map cribbed from:
        #   http://blog.hyfather.com/merging-an-array-of-hashes-in-ruby
        #   https://gist.github.com/1295258
        return Hash[
          *@data['links'].map{|o| {o['rel'].to_sym => o['href']}}.map(&:to_a).flatten
        ]
      end
      return nil
    end
  end
end

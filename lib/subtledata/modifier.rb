class Modifier
  module SubtleData
    attr_accessor :modifier_id

    # :internal => :external
    def self.attribute_map
      {
          :modifier_id => :modifier_id

      }
    end

    def initialize(attributes = {})
      # Morph attribute keys into undescored rubyish style
      if attributes.to_s != ""

        if Modifier.attribute_map["modifier_id".to_sym] != nil
          name = "modifier_id".to_sym
          value = attributes["modifier_id"]
          send("#{name}=", value) if self.respond_to?(name)
        end
      end
    end

    def to_body
      body = {}
      Modifier.attribute_map.each_pair do |key,value|
        body[value] = self.send(key) unless self.send(key).nil?
      end
      body
    end
  end
end


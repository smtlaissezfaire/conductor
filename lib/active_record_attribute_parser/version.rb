module ActiveRecordAttributeParser
  module Version
    class << self
      def string
        "#{major}.#{minor}.#{tiny}"
      end
    
      def major
        0
      end
      
      def minor
        1
      end
      
      def tiny
        2
      end
      
    private
    
      def version_parts
        string.split(".").map { |part| part.to_i }
      end
    end
  end
end
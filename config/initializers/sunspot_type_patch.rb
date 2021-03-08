# See: https://stackoverflow.com/a/11068152
module Sunspot
  module Type
    class TimeType < AbstractType
      def indexed_name(name) #:nodoc:
        "#{name}_dt"
      end
    end
    register TimeType
  end
end

module Dominion
  module Engine
    class Village < Kingdom
      include Base
      
      def cost() 3 end
    end
  end
end
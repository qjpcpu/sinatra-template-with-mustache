class MustacheApp
  module Views
    class Layout < Mustache
      def title 
        @title || "no title"
      end
    end
  end
end

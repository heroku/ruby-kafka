module Kafka
  module Protocol
    class ApiVersionsRequest

      # A request for cluster metadata.
      def initialize
      end

      def api_key
        18
      end

      def response_class
        Protocol::ApiVersionsResponse
      end

      def encode(encoder)
      end
    end
  end
end

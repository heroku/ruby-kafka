module Kafka
  module Protocol
    class ApiVersionsResponse
      attr_reader :error_code, :versions
      def initialize(error_code:, versions:)
        @error_code = error_code
        @versions = versions
      end

      # Decodes a MetadataResponse from a {Decoder} containing response data.
      #
      # @param decoder [Decoder]
      # @return [MetadataResponse] the metadata response.
      def self.decode(decoder)
        error_code = decoder.int16

        versions = decoder.array do
          api_key = decoder.int16
          min_version = decoder.int16
          max_version = decoder.int16
          [api_key, min_version, max_version]
        end

        new(error_code: error_code, versions: versions)
      end
    end
  end
end

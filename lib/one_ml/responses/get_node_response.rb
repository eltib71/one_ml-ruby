module OneMl
  class GetNodeResponse

    attr_reader :raw_response
    delegate :success?, to: :raw_response

    def initialize(raw_response:)
      @raw_response = raw_response
    end

    def node
      @node ||= Node.new(self.parsed_response_body)
    end

    def response_body
      @response_body ||= self.raw_response.body
    end

    def parsed_response_body
      @parsed_response_body ||= JSON.parse(response_body).
        symbolize_keys
    end

  end
end

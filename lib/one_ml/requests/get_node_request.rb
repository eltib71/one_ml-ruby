module OneMl
  class GetNodeRequest

    URI = "https://1ml.com/node/:pub_key/json".freeze

    def initialize(pub_key:)
      @pub_key = pub_key
    end

    def uri
      URI.gsub(":pub_key", @pub_key)
    end

    def raw_response
      @raw_response ||= Typhoeus.get(uri)
    end

  end
end

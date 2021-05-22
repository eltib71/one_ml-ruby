module OneMlClient
  class Client

    def get_node(pub_key)
      request = GetNodeRequest.new(pub_key: pub_key)
      GetNodeResponse.new(raw_response: request.raw_response)
    end

  end
end

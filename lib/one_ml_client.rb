require "active_support/core_ext/module/delegation"
require "active_support/core_ext/hash/indifferent_access"
require "dry-initializer"
require "one_ml_client/version"
require "one_ml_client/models/node"
require "one_ml_client/requests/get_node_request"
require "one_ml_client/responses/get_node_response"
require "one_ml_client/client"

module OneMlClient
  class Error < StandardError; end
  # Your code goes here...
end

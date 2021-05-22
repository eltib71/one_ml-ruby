require "spec_helper"

RSpec.describe "Get node" do

  it "fetches a node's info", vcr: {record: :once} do
    pub_key =
      "030c3f19d742ca294a55c00376b3b355c3c90d61c6b6b39554dbc7ac19b141c14f"

    client = OneMlClient::Client.new
    result = client.get_node(pub_key)

    expect(result).to be_success

    node = result.node

    aggregate_failures "attributes" do
      expect(node.pub_key).to eq pub_key
      expect(node.alias).to eq "Bitrefill"
      expect(node.noderank.capacity).to be_a(Numeric)
    end
  end

end

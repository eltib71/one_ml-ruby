module OneMlClient
  class Node

    extend Dry::Initializer
    option :last_update, type: proc(&:to_i)
    option :pub_key
    option :alias
    option :addresses, [] do
      option :network
      option :addr
    end
    option :color
    option :capacity, type: proc(&:to_i)
    option :channelcount, type: proc(&:to_i)
    option :noderank, {} do
      option :capacity, type: proc(&:to_i)
      option :channelcount, type: proc(&:to_i)
      option :age, type: proc(&:to_i)
      option :growth, type: proc(&:to_i)
      option :availability, type: proc(&:to_i)
    end

  end
end

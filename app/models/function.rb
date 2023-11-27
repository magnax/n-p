# frozen_string_literal: true

class Function
  include Neo4j::ActiveNode
  property :name, type: String
end

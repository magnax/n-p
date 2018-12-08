class Country 
  include Neo4j::ActiveNode
  property :name, type: String
  property :code, type: String



end

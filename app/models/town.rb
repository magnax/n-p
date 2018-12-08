class Town 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :country, type: :LOCATED


end

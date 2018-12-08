class Diocese 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :town, type: :LOCATED


end

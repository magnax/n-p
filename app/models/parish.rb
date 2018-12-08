class Parish 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :town, type: :LOCATED
  has_one :out, :diocese, type: :BELONGS_TO


end

class Parish 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :in_or_out_or_both, :town, type: :LOCATED
  has_one :in_or_out_or_both, :diocese, type: :BELONGS_TO


end

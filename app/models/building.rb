class Building 
  include Neo4j::ActiveNode
  property :name, type: String
  property :kind, type: String

  has_one :in_or_out_or_both, :town, type: :LOCATED
  has_one :in_or_out_or_both, :parish, type: :BELONGS_TO


end

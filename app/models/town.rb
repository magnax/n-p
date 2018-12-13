class Town 
  include Neo4j::ActiveNode
  property :name, type: String
  property :postcode, type: String

  has_one :out, :country, type: :LOCATED

  def self.list_all
    Town.all.map { |t| [t.name, t.id] }
  end
end

class Parish 
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :town, type: :LOCATED
  has_one :out, :diocese, type: :BELONGS_TO

  def self.list_all
    Parish.all.map { |p| ["#{p.town.name} | #{p.name}", p.id] }
  end
end

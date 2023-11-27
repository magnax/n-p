# frozen_string_literal: true

class Country
  include Neo4j::ActiveNode
  property :name, type: String
  property :code, type: String

  def self.list_all
    Country.all.map { |c| [c.name, c.id] }
  end
end

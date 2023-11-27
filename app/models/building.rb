# frozen_string_literal: true

class Building
  include Neo4j::ActiveNode
  property :name, type: String
  property :kind, type: String

  has_one :out, :town, type: :LOCATED
  has_one :out, :parish, type: :BELONGS_TO
end

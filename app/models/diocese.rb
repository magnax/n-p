# frozen_string_literal: true

class Diocese
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :out, :town, type: :LOCATED

  def self.list_all
    Diocese.all.map { |d| [d.name, d.id] }
  end
end

# frozen_string_literal: true

class Person
  include Neo4j::ActiveNode
  property :first_name, type: String
  property :last_name, type: String
  property :pesel, type: String
  property :date_of_birth, type: Date
end

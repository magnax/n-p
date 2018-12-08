class CreateBuilding < Neo4j::Migrations::Base
  def up
    add_constraint :Building, :uuid
  end

  def down
    drop_constraint :Building, :uuid
  end
end

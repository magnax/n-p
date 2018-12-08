class CreateTown < Neo4j::Migrations::Base
  def up
    add_constraint :Town, :uuid
  end

  def down
    drop_constraint :Town, :uuid
  end
end

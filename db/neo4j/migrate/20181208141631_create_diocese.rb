class CreateDiocese < Neo4j::Migrations::Base
  def up
    add_constraint :Diocese, :uuid
  end

  def down
    drop_constraint :Diocese, :uuid
  end
end

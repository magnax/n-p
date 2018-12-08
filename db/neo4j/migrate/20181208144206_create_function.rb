class CreateFunction < Neo4j::Migrations::Base
  def up
    add_constraint :Function, :uuid
  end

  def down
    drop_constraint :Function, :uuid
  end
end

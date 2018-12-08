class CreateParish < Neo4j::Migrations::Base
  def up
    add_constraint :Parish, :uuid
  end

  def down
    drop_constraint :Parish, :uuid
  end
end

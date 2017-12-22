class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.text :text
      t.text :request_info

      t.timestamps
    end
  end
end

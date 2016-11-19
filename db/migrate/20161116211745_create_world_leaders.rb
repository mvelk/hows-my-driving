class CreateWorldLeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :world_leaders do |t|
      t.string :name, null: false
      t.integer :country_id, null: false
      t.timestamps
    end
  end
end

class CreateConcepts < ActiveRecord::Migration[5.0]
  def change
    create_table :concepts do |t|
      t.string :name
      t.decimal :relevance_score
      t.string :encyclopedia_reference
      t.timestamps
    end
  end
end

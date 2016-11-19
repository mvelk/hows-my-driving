class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :type
      t.string :text
      t.decimal :relevance_score
      t.string :sentiment_type
      t.decimal :sentiment_score
      t.integer :reference_count
      t.timestamps
    end
  end
end

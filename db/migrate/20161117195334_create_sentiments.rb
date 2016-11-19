class CreateSentiments < ActiveRecord::Migration[5.0]
  def change
    create_table :sentiments do |t|
      t.integer :world_leader_id
      t.timestamps
    end
  end
end

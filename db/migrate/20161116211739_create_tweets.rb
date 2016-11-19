class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :text
      t.integer :world_leader_id
      t.string :language
      t.timestamps
    end
  end
end

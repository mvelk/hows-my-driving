class Addcolumnstoentities < ActiveRecord::Migration[5.0]
  def change
    add_column :entities, :sentiment_id, :integer
  end
end

class Addcolumnstoconcepts < ActiveRecord::Migration[5.0]
  def change
    add_column :concepts, :sentiment_id, :integer
  end
end

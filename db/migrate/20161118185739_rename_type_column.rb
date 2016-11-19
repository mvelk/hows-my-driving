class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :entities, :type, :entity_type
  end
end

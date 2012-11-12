class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def up
    remove_column :table_names, :source
  end

  def down
    add_column :table_names, :source, :string
  end
end

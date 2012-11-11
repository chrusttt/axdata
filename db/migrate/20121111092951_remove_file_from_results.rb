class RemoveFileFromResults < ActiveRecord::Migration
  def up
    remove_column :results, :file
  end

  def down
    add_column :results, :file, :string
  end
end

class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.text :description
      t.string :file
      t.integer :sample_id

      t.timestamps
    end
  end
end

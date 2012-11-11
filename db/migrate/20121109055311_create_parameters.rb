class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :name
      t.string :base
      t.string :holder
      t.string :time
      t.integer :bias
      t.integer :h2
      t.integer :ch4
      t.integer :b2h6h2
      t.integer :n2
      t.integer :tc
      t.integer :pmw
      t.integer :p
      t.integer :sample_id

      t.timestamps
    end
  end
end

class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.text :description
      t.string :state
      t.date :date
      t.integer :user_id
      t.string :pic

      t.timestamps
    end
  end
end

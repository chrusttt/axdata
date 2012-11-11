class CreateCustomParameters < ActiveRecord::Migration
  def change
    create_table :custom_parameters do |t|
      t.string :name
      t.string :value
      t.integer :parameter_id

      t.timestamps
    end
  end
end

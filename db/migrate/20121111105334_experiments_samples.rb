class ExperimentsSamples < ActiveRecord::Migration
  def change
    create_table :experiments_samples do |t|
      t.integer :experiment_id
      t.integer :sample_id
      

      t.timestamps
    end
    add_index :experiments_samples, :experiment_id               
    add_index :experiments_samples, :sample_id
  end
end

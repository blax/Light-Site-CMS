class CreateTrainingModuleEvents < ActiveRecord::Migration
  def self.up
    create_table :training_module_events do |t|
      t.integer :training_module_id
      t.text :place
      t.timestamp :event_date
      t.timestamps
    end
    
  end

  def self.down
    drop_table :training_module_events
  end
end

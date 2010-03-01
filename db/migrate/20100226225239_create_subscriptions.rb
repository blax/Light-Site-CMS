class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.string :address, :null => false
      t.boolean :active, :default => true, :null => false
      t.string :secret, :null => false
      t.integer :newsletter_id, :null => false
      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :subscriptions
  end
end



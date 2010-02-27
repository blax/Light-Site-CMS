class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.string :address
      t.boolean :active
      t.integer :newsletter_id
      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :subscriptions
  end
end



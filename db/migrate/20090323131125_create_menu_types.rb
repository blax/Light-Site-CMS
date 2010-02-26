class CreateMenuTypes < ActiveRecord::Migration
  def self.up
    create_table :menu_types do |t|
      t.string :name
      t.integer :type_no

      t.timestamps
    end

    
    
    
    

  end

  def self.down
    drop_table :menu_types
  end
end

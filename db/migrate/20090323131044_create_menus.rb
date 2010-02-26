class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.integer :menu_type_id
      t.integer :depth

      t.timestamps
    end

    
  end

  def self.down
    drop_table :menus
  end
end

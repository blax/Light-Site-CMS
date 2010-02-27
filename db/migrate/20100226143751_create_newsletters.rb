class CreateNewsletters < ActiveRecord::Migration
  def self.up
    create_table :newsletters do |t|
      t.string :name
      t.string :header
      t.integer :language_id
      
      t.timestamps
    end
    
  end

  def self.down
    drop_table :newsletters
  end
end


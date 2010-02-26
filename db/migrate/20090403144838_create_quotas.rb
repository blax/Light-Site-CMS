class CreateQuotas < ActiveRecord::Migration
  def self.up
    create_table :quotas do |t|
      t.text :content
      t.string :speaker
      t.string :company
      t.integer :language_id

      t.timestamps
    end
    
  end

  def self.down
    drop_table :quotas
  end
end

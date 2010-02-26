class AddLayoutTemplateIdToPositions < ActiveRecord::Migration
  def self.up
    add_column :positions, :layout_template_id, :integer
    
  end

  def self.down
    remove_column :positions, :layout_template_id
  end
end

class ExtensionType < ActiveRecord::Base
  validates_uniqueness_of :name, :controller_name
  
  has_many :items
  
end

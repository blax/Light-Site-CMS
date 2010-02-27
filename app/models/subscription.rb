class Subscription < ActiveRecord::Base
  validates_format_of :address, :on => :create,
    :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
    :message => "invalid email"
    
  validates_uniqueness_of :address,
    :message => "email already exists"
      
  belongs_to :newsletter
end

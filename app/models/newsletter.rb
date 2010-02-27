class Newsletter < ActiveRecord::Base  
  has_one :item, :as => :resource
  has_many :subscriptions
end

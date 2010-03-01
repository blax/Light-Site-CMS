class Newsletter < ActiveRecord::Base  
  has_one :item, :as => :resource, :dependent => :destroy
  has_many :subscriptions, :dependent => :destroy

  def deliver(params)
    self.subscriptions.active.each do |s|                                     
      Mailer.deliver_newsletter(s.address, params[:subject], params[:content], s.secret)
    end
  end

end

class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(params[:subscription])
    @subscription.secret = @subscription.get_hash
    @subscription.active = true
    if @subscription.save
      render :update do |page|
        page.replace_html "subscr_msg_#{@subscription.newsletter_id}",
          :partial => "shared/message", 
            :locals => {:type => :notice, :content => t("subscribed")}
        page <<  "$('#subscription_address').val('')"  #clears input box
      end
    else
      #validation return custom message which is key for i18n files
      err_msg = t @subscription.errors.on :address
      render :update do |page|
        page.replace_html "subscr_msg_#{@subscription.newsletter_id}",
          :partial => "shared/message", 
            :locals => {:type => :error, :content => err_msg}
      end
    end
  end

  def unsubscribe
    @subscription = Subscription.find_by_secret(params[:secret])
    @subscription.update_attribute(:active, false)

    redirect_to unsubscribed_info_path
  end

  def unsubscribed_info          
  end
end

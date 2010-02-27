class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save
      render :update do |page|
        page.replace_html "subscr_msg_#{@subscription.newsletter_id}",
          :partial => "shared/message", 
            :locals => {:type => :notice, :content => t("subscribed")}
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
end

class Mailer < ActionMailer::Base
  def newsletter(rec, sub, content, secret)
    subject       sub
    recipients    rec
    sent_on       Time.now
    body          :content => content, :secret => secret
  end
end

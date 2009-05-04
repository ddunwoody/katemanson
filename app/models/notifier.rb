class Notifier < ActionMailer::Base
  def contact_message name, email, subject, message
    recipients CONTACT_EMAIL
    from name
    reply_to email
    subject "[katemanson.co.uk] #{subject}"
    # Email body substitutions go here
    content_type 'text/html'
    body :name => name, :message => message
  end

  def card cartoon_id, sender_name, sender_email, recipient_name, recipient_email, message
    from sender_name
    reply_to sender_email
    recipients "#{recipient_name} <#{recipient_email}>"
    subject "#{sender_name} has sent you an e-card from www.katemanson.co.uk"
    # Email body substitutions go here
    content_type 'text/html'
    body :cartoon_id => cartoon_id, :sender_name => sender_name, :recipient_name => recipient_name, :message => message
  end
end

class CardsController < MenuController
  def create
    begin
      cartoon_id = params[:cartoon_id]
      sender_name = params[:sender_name]
      sender_email = params[:sender_email]
      recipient_name = params[:recipient_name]
      recipient_email = params[:recipient_email]
      message = params[:message]
      logger.info <<-EOF
        Sending cartoon #{cartoon_id} from #{sender_name} (#{sender_email}) to #{recipient_name} (#{recipient_email}) with message:
        #{message}
      EOF
      Notifier.deliver_card cartoon_id, sender_name, sender_email, recipient_name, recipient_email, message
      render :text => 'Your e-card has been sent.'
    rescue Exception => e
      logger.error e
      render :text => <<-EOF
        Sorry, there has been a problem sending your e-card - the site owner has been
        notified.  Please try again later.
      EOF
    end
  end

  def edit
    @cartoon = Cartoon.find(params[:id])
  end

  private

  def set_nav_context
    super
    @current_page = 'gallery'
    @page_title = 'Send e-card'
  end
end

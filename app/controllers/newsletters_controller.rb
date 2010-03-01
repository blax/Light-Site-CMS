class NewslettersController < ItemsController
  skip_filter [:init_new, :find_item, :authorize]
  require_role "admin", :except => "show"

  # GET /events/new
  # GET /events/new.xml
  def new
    @newsletter = Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newsletter }
    end
  end

  # GET /events/1/edit
  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  def deliver
    @newsletter = Newsletter.find(params[:newsletter_id])
    @newsletter.send_later :deliver, params
    flash[:notice] = t('newsletter_send')                                            
    redirect_to :back
  end

  
end

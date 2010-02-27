class NewslettersController < ItemsController
  skip_filter [:init_new,:find_item,:authorize]
  require_role "admin", :except => "show"
  
  def show
    @newsletter = Newsletter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newsletter }
    end
  end

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

end




#show : widoczna formatka do wprowazenia emaila
#new: wprowadzenie nagłówka
#edit: edycja nagłówka
#
#add: dodanie wprowadzonego do bazy
#

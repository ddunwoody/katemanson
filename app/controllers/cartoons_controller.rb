class CartoonsController < AdminController
  def index
    @cartoons = Cartoon.all
  end

  def show
    @cartoon = Cartoon.find params[:id]
  end

  def new
    @cartoon = Cartoon.new
  end

  def edit
    @cartoon = Cartoon.find params[:id]
  end

  def create
    @cartoon = Cartoon.new(params[:cartoon])

    if @cartoon.save
      flash[:notice] = 'Cartoon was successfully created.'
      redirect_to @cartoon
    else
      render :action => 'new'
    end
  end

  def update
    @cartoon = Cartoon.find params[:id]

    if @cartoon.update_attributes params[:cartoon]
      flash[:notice] = 'Cartoon was successfully updated.'
      redirect_to @cartoon
    else
      render :action => 'edit'
    end
  end

  def destroy
    @cartoon = Cartoon.find(params[:id]).destroy
    redirect_to cartoons_url
  end
end

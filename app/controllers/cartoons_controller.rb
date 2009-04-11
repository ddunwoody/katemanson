class CartoonsController < ApplicationController
  # GET /cartoons
  # GET /cartoons.xml
  def index
    @cartoons = Cartoon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cartoons }
    end
  end

  # GET /cartoons/1
  # GET /cartoons/1.xml
  def show
    @cartoon = Cartoon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cartoon }
    end
  end

  # GET /cartoons/new
  # GET /cartoons/new.xml
  def new
    @cartoon = Cartoon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cartoon }
    end
  end

  # GET /cartoons/1/edit
  def edit
    @cartoon = Cartoon.find(params[:id])
  end

  # POST /cartoons
  # POST /cartoons.xml
  def create
    @cartoon = Cartoon.new(params[:cartoon])

    respond_to do |format|
      if @cartoon.save
        flash[:notice] = 'Cartoon was successfully created.'
        format.html { redirect_to(@cartoon) }
        format.xml  { render :xml => @cartoon, :status => :created, :location => @cartoon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cartoon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cartoons/1
  # PUT /cartoons/1.xml
  def update
    @cartoon = Cartoon.find(params[:id])

    respond_to do |format|
      if @cartoon.update_attributes(params[:cartoon])
        flash[:notice] = 'Cartoon was successfully updated.'
        format.html { redirect_to(@cartoon) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cartoon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cartoons/1
  # DELETE /cartoons/1.xml
  def destroy
    @cartoon = Cartoon.find(params[:id])
    @cartoon.destroy

    respond_to do |format|
      format.html { redirect_to(cartoons_url) }
      format.xml  { head :ok }
    end
  end
end

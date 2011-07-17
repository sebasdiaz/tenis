class PlayerlevelsController < ApplicationController
  # GET /playerlevels
  # GET /playerlevels.xml
  def index
    @playerlevels = Playerlevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @playerlevels }
    end
  end

  # GET /playerlevels/1
  # GET /playerlevels/1.xml
  def show
    @playerlevel = Playerlevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @playerlevel }
    end
  end

  # GET /playerlevels/new
  # GET /playerlevels/new.xml
  def new
    @playerlevel = Playerlevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @playerlevel }
    end
  end

  # GET /playerlevels/1/edit
  def edit
    @playerlevel = Playerlevel.find(params[:id])
  end

  # POST /playerlevels
  # POST /playerlevels.xml
  def create
    @playerlevel = Playerlevel.new(params[:playerlevel])

    respond_to do |format|
      if @playerlevel.save
        format.html { redirect_to(@playerlevel, :notice => 'Playerlevel was successfully created.') }
        format.xml  { render :xml => @playerlevel, :status => :created, :location => @playerlevel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @playerlevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /playerlevels/1
  # PUT /playerlevels/1.xml
  def update
    @playerlevel = Playerlevel.find(params[:id])

    respond_to do |format|
      if @playerlevel.update_attributes(params[:playerlevel])
        format.html { redirect_to(@playerlevel, :notice => 'Playerlevel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @playerlevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /playerlevels/1
  # DELETE /playerlevels/1.xml
  def destroy
    @playerlevel = Playerlevel.find(params[:id])
    @playerlevel.destroy

    respond_to do |format|
      format.html { redirect_to(playerlevels_url) }
      format.xml  { head :ok }
    end
  end
end

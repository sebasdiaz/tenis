class PlayerlevelsController < ApplicationController
  before_filter  :find_player
  before_filter  :find_playerlevel, :except => [:index, :new, :create]
  before_filter  :find_level

  # GET /playerlevels
  # GET /playerlevels.xml
  def index
    @playerlevels = @player.playerlevels.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @playerlevels }
    end
  end

  # GET /playerlevels/1
  # GET /playerlevels/1.xml
  def show
    @playerlevel = @player.playerlevels.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @playerlevel }
    end
  end

  # GET /playerlevels/new
  # GET /playerlevels/new.xml
  def new
    @playerlevel = @player.playerlevels.build()

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @playerlevel }
    end
  end

  # GET /playerlevels/1/edit
  def edit
    @playerlevel = @player.playerlevels.find(params[:id])
  end

  # POST /playerlevels
  # POST /playerlevels.xml
  def create
    @playerlevel =  @player.playerlevels.build(params[:playerlevel])

    respond_to do |format|
      if @playerlevel.save
        format.html { redirect_to(@player, :notice => 'Playerlevel was successfully created.') }
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
    @playerlevel = @player.playerlevels.find(params[:id])

    respond_to do |format|
      if @playerlevel.update_attributes(params[:playerlevel])
        format.html { redirect_to(@player, :notice => 'Playerlevel was successfully updated.') }
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
    @playerlevel = @player.playerlevels.find(params[:id])
    @playerlevel.destroy

    respond_to do |format|
      format.html { redirect_to(player_url(@player)) }
      format.xml  { head :ok }
    end
  end

  protected

  def find_player
    @player = Player.find(params[:player_id])
  end

  def find_playerlevel
    @playerlevel = @player.playerlevels.find(params[:id])
  end

  def find_level
    @level = Level.all
  end
end

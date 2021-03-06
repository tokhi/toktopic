class EventsController < ApplicationController
before_filter :authenticate_user!, :except => [:index, :show]
  # GET /events
  # GET /events.json
  def index
   # @events = Event.all
    @events = Event.order("id asc").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end


  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end


 # GET /event/1/edit
  def edit
    @event = Event.find(params[:id])
  end


  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    #respond_to do |format|
      if @event.save
     #   format.html # { redirect_to @event, notice: 'Event was successfully created.' }
     #   format.json { render json: @events }
	redirect_to '/events'
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    #end
  end

# PUT /people/1
  # PUT /people/1.json
  def update
    @event = Event.find(params[:id])

    #respond_to do |format|
      if @event.update_attributes(params[:event])
        #format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        #format.json { head :no_content }
	redirect_to '/events'
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    #end
  end


 # DELETE /event/1
  # DELETE /event/1.json
  def destroy
    @event = Event.find(params[:id])
     authorize! :destroy, @event, :message => 'Not authorized as an administrator.'
 #   @user = current_user
     @event.destroy
      redirect_to "/events"  

  end

end

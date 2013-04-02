class EventsController < ApplicationController
before_filter :authenticate_user!, :except => [:index]
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

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

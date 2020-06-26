class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events_invited =  Event.joins(:event_invitations).where(event_invitations:{user_id: current_user})
    @events_own = Event.where(user_id: current_user)

  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event
  end

  # GET /events/new
  def new
    @event = Event.new()
    @event_dates=EventDate.new()
    @event.user = User.first()
    2.times{@event.event_dates.build}
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        a = EventInvitation.create(event: @event, user: @event.user)
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def delete
    @event.delete
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.fetch(:event, {}).permit( :id, :title, :ubication, :description, :public, :decition, :min_vote, :start_voting, :finish_voting, :user_id, :event_dates_id , :event_banner_photo, event_file: [],
                                       event_dates_attributes: [:id, :date, :_destroy], event_date_vote_attributes:[:id, :user_id, :event_date_id, :_destroy])
    end
end

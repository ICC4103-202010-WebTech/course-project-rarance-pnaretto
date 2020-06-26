class OrganizationEventsController < ApplicationController
  before_action :set_organization_event, only: [:show, :edit, :update, :destroy]

  # GET /organization_events
  # GET /organization_events.json
  def index
    @organization_events = OrganizationEvent.all
  end

  # GET /organization_events/1
  # GET /organization_events/1.json
  def show
  end

  # GET /organization_events/new
  def new
    @organization_event = OrganizationEvent.new
  end

  # GET /organization_events/1/edit
  def edit
  end

  # POST /organization_events
  # POST /organization_events.json
  def create
    @organization_event = OrganizationEvent.new(organization_event_params)

    respond_to do |format|
      if @organization_event.save
        format.html { redirect_to @organization_event, notice: 'Organization event was successfully created.' }
        format.json { render :show, status: :created, location: @organization_event }
      else
        format.html { render :new }
        format.json { render json: @organization_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_events/1
  # PATCH/PUT /organization_events/1.json
  def update
    respond_to do |format|
      if @organization_event.update(organization_event_params)
        format.html { redirect_to @organization_event, notice: 'Organization event was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_event }
      else
        format.html { render :edit }
        format.json { render json: @organization_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_events/1
  # DELETE /organization_events/1.json
  def destroy
    @organization_event.destroy
    respond_to do |format|
      format.html { redirect_to organization_events_url, notice: 'Organization event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_event
      @organization_event = OrganizationEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_event_params
      params.fetch(:organization_event, {}).permit( :id, :event_id, :organization_id)
    end
end

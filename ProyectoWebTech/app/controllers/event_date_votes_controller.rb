class EventDateVotesController < ApplicationController
  before_action :set_event_date_vote, only: [:show, :edit, :update, :destroy]

  # GET /event_date_votes
  # GET /event_date_votes.json
  def index
    @event_date_votes = EventDateVote.all
  end

  # GET /event_date_votes/1
  # GET /event_date_votes/1.json
  def show
  end

  # GET /event_date_votes/new
  def new
    @event_date_vote = EventDateVote.new
  end

  # GET /event_date_votes/1/edit
  def edit
  end

  # POST /event_date_votes
  # POST /event_date_votes.json
  def create
    @event_date_vote = EventDateVote.new(event_date_vote_params)

    respond_to do |format|
      if @event_date_vote.save
        format.html { redirect_to @event_date_vote, notice: 'Event date vote was successfully created.' }
        format.json { render :show, status: :created, location: @event_date_vote }
      else
        format.html { render :new }
        format.json { render json: @event_date_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_date_votes/1
  # PATCH/PUT /event_date_votes/1.json
  def update
    respond_to do |format|
      if @event_date_vote.update(event_date_vote_params)
        format.html { redirect_to @event_date_vote, notice: 'Event date vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_date_vote }
      else
        format.html { render :edit }
        format.json { render json: @event_date_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_date_votes/1
  # DELETE /event_date_votes/1.json
  def destroy
    @event_date_vote.destroy
    respond_to do |format|
      format.html { redirect_to event_date_votes_url, notice: 'Event date vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_date_vote
      @event_date_vote = EventDateVote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_date_vote_params
      params.fetch(:event_date_vote, {})
    end
end

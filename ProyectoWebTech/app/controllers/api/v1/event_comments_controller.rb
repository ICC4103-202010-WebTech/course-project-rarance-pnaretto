class API::V1::EventCommentsController < APIController
  before_action :set_event_comment, only: [:show, :edit, :update, :destroy]

  # GET /event_comments
  # GET /event_comments.json
  def index
    @event_comments = EventComment.all
  end

  # GET /event_comments/1
  # GET /event_comments/1.json
  def show
    @events
  end

  # GET /event_comments/new
  def new
    @event_comment = EventComment.new
  end

  # GET /event_comments/1/edit
  def edit
  end

  # POST /event_comments
  # POST /event_comments.json
  def create
    @event_comment = EventComment.new(event_comment_params)
    @event_comment.user = User.find(params[:user_id])
    @event_comment.event = Event.find(params[:event_id])
    if @event_comment.save
      render :show, status: :created, location: @event
    else
      render json: @event_comment.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /event_comments/1
  # PATCH/PUT /event_comments/1.json
  def update
    if @event_comment.update(event_comment_params)
      render :show, status: :ok, location: api_v1_events_path(@event_comment)
    else
      render json: @event_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_comments/1
  # DELETE /event_comments/1.json
  def destroy
    @event_comment.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_comment
      @event_comment = EventComment.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def event_comment_params
      params.fetch(:event_comment, {}).permit(:id, :message, :image, :created_at, :event_id, :user_id)
    end
end

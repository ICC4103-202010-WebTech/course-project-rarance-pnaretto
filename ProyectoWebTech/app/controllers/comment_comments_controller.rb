class CommentCommentsController < ApplicationController
  before_action :set_comment_comment, only: [:show, :edit, :update, :destroy]

  # GET /comment_comments
  # GET /comment_comments.json
  def index
    @comment_comments = CommentComment.all
  end

  # GET /comment_comments/1
  # GET /comment_comments/1.json
  def show
  end

  # GET /comment_comments/new
  def new
    @comment_comment = CommentComment.new()
  end

  # GET /comment_comments/1/edit
  def edit
  end

  # POST /comment_comments
  # POST /comment_comments.json
  def create
    @comment_comment = CommentComment.new(comment_comment_params)

    respond_to do |format|
      if @comment_comment.save
        format.html { redirect_back(fallback_location: root_path)}
        format.json { render :show, status: :created, location: @comment_comment }
      else
        format.html { render :new }
        format.json { render json: @comment_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_comments/1
  # PATCH/PUT /comment_comments/1.json
  def update
    respond_to do |format|
      if @comment_comment.update(comment_comment_params)
        format.html { redirect_to @comment_comment, notice: 'Comment comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_comment }
      else
        format.html { render :edit }
        format.json { render json: @comment_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_comments/1
  # DELETE /comment_comments/1.json
  def destroy
    @comment_comment.destroy
    respond_to do |format|
      format.html { redirect_to comment_comments_url, notice: 'Comment comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_comment
      @comment_comment = CommentComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_comment_params
      params.fetch(:comment_comment, {}).permit( :id, :title, :message, :description, :user_id, :event_comment_id ,:user, :event_comment,
      event_dates_attributes: [:id, :date, :_destroy])
    end
end

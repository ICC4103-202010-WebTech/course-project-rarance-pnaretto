class CommentCommentReportsController < ApplicationController
  before_action :set_comment_comment_report, only: [:show, :edit, :update, :destroy]

  # GET /comment_comment_reports
  # GET /comment_comment_reports.json
  def index
    @comment_comment_reports = CommentCommentReport.all
  end

  # GET /comment_comment_reports/1
  # GET /comment_comment_reports/1.json
  def show
  end

  # GET /comment_comment_reports/new
  def new
    @comment_comment_report = CommentCommentReport.new
  end

  # GET /comment_comment_reports/1/edit
  def edit
  end

  # POST /comment_comment_reports
  # POST /comment_comment_reports.json
  def create
    @comment_comment_report = CommentCommentReport.new(comment_comment_report_params)

    respond_to do |format|
      if @comment_comment_report.save
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :created, location: @comment_comment_report }
      else
        format.html { render :new }
        format.json { render json: @comment_comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_comment_reports/1
  # PATCH/PUT /comment_comment_reports/1.json
  def update
    respond_to do |format|
      if @comment_comment_report.update(comment_comment_report_params)
        format.html { redirect_to @comment_comment_report, notice: 'Comment comment report was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_comment_report }
      else
        format.html { render :edit }
        format.json { render json: @comment_comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_comment_reports/1
  # DELETE /comment_comment_reports/1.json
  def destroy
    @comment_comment_report.destroy
    respond_to do |format|
      format.html { redirect_to comment_comment_reports_url, notice: 'Comment comment report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_comment_report
      @comment_comment_report = CommentCommentReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_comment_report_params
      params.fetch(:comment_comment_report, {}).permit(:id, :comment_comment_id, :user_id, :message)
    end
end

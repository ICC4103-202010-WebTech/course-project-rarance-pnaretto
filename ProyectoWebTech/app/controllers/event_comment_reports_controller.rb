class EventCommentReportsController < ApplicationController
  before_action :set_event_comment_report, only: [:show, :edit, :update, :destroy]

  # GET /event_comment_reports
  # GET /event_comment_reports.json
  def index
    @event_comment_reports = EventCommentReport.all
  end

  # GET /event_comment_reports/1
  # GET /event_comment_reports/1.json
  def show
  end

  # GET /event_comment_reports/new
  def new
    @event_comment_report = EventCommentReport.new
  end

  # GET /event_comment_reports/1/edit
  def edit
  end

  # POST /event_comment_reports
  # POST /event_comment_reports.json
  def create
    @event_comment_report = EventCommentReport.new(event_comment_report_params)

    respond_to do |format|
      if @event_comment_report.save
        format.html { redirect_to @event_comment_report, notice: 'Event comment report was successfully created.' }
        format.json { render :show, status: :created, location: @event_comment_report }
      else
        format.html { render :new }
        format.json { render json: @event_comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_comment_reports/1
  # PATCH/PUT /event_comment_reports/1.json
  def update
    respond_to do |format|
      if @event_comment_report.update(event_comment_report_params)
        format.html { redirect_to @event_comment_report, notice: 'Event comment report was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_comment_report }
      else
        format.html { render :edit }
        format.json { render json: @event_comment_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_comment_reports/1
  # DELETE /event_comment_reports/1.json
  def destroy
    @event_comment_report.destroy
    respond_to do |format|
      format.html { redirect_to event_comment_reports_url, notice: 'Event comment report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_comment_report
      @event_comment_report = EventCommentReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_comment_report_params
      params.fetch(:event_comment_report, {}).permit(:id, :event_comment_id, :user_id, :message)
    end
end

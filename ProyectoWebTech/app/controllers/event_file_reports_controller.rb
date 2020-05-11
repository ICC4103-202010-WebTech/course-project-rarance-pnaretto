class EventFileReportsController < ApplicationController
  before_action :set_event_file_report, only: [:show, :edit, :update, :destroy]

  # GET /event_file_reports
  # GET /event_file_reports.json
  def index
    @event_file_reports = EventFileReport.all
  end

  # GET /event_file_reports/1
  # GET /event_file_reports/1.json
  def show
  end

  # GET /event_file_reports/new
  def new
    @event_file_report = EventFileReport.new
  end

  # GET /event_file_reports/1/edit
  def edit
  end

  # POST /event_file_reports
  # POST /event_file_reports.json
  def create
    @event_file_report = EventFileReport.new(event_file_report_params)

    respond_to do |format|
      if @event_file_report.save
        format.html { redirect_to @event_file_report, notice: 'Event file report was successfully created.' }
        format.json { render :show, status: :created, location: @event_file_report }
      else
        format.html { render :new }
        format.json { render json: @event_file_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_file_reports/1
  # PATCH/PUT /event_file_reports/1.json
  def update
    respond_to do |format|
      if @event_file_report.update(event_file_report_params)
        format.html { redirect_to @event_file_report, notice: 'Event file report was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_file_report }
      else
        format.html { render :edit }
        format.json { render json: @event_file_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_file_reports/1
  # DELETE /event_file_reports/1.json
  def destroy
    @event_file_report.destroy
    respond_to do |format|
      format.html { redirect_to event_file_reports_url, notice: 'Event file report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_file_report
      @event_file_report = EventFileReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_file_report_params
      params.fetch(:event_file_report, {})
    end
end

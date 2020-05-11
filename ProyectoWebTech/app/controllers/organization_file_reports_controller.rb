class OrganizationFileReportsController < ApplicationController
  before_action :set_organization_file_report, only: [:show, :edit, :update, :destroy]

  # GET /organization_file_reports
  # GET /organization_file_reports.json
  def index
    @organization_file_reports = OrganizationFileReport.all
  end

  # GET /organization_file_reports/1
  # GET /organization_file_reports/1.json
  def show
  end

  # GET /organization_file_reports/new
  def new
    @organization_file_report = OrganizationFileReport.new
  end

  # GET /organization_file_reports/1/edit
  def edit
  end

  # POST /organization_file_reports
  # POST /organization_file_reports.json
  def create
    @organization_file_report = OrganizationFileReport.new(organization_file_report_params)

    respond_to do |format|
      if @organization_file_report.save
        format.html { redirect_to @organization_file_report, notice: 'Organization file report was successfully created.' }
        format.json { render :show, status: :created, location: @organization_file_report }
      else
        format.html { render :new }
        format.json { render json: @organization_file_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_file_reports/1
  # PATCH/PUT /organization_file_reports/1.json
  def update
    respond_to do |format|
      if @organization_file_report.update(organization_file_report_params)
        format.html { redirect_to @organization_file_report, notice: 'Organization file report was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_file_report }
      else
        format.html { render :edit }
        format.json { render json: @organization_file_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_file_reports/1
  # DELETE /organization_file_reports/1.json
  def destroy
    @organization_file_report.destroy
    respond_to do |format|
      format.html { redirect_to organization_file_reports_url, notice: 'Organization file report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_file_report
      @organization_file_report = OrganizationFileReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_file_report_params
      params.fetch(:organization_file_report, {})
    end
end

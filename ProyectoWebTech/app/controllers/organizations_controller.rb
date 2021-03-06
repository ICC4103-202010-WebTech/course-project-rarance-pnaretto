class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations_invited =  Organization.joins(:organization_members).where(organization_members:{user_id: current_user})
    @organizations_own = Organization.where(user_id: current_user)
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    @public_events = OrganizationEvent.where(organization_id: @organization.id)

  end

  # GET /organizations/new
  def new
    @organization = Organization.new
    @organization.user = User.first
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)
    respond_to do |format|
      if @organization.save
        a = OrganizationMember.create(user: @organization.user, organization: @organization)
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params())
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_params

      params.fetch(:organization, {}).permit( :id, :name, :description, :user_id,
                                              organization_member_attributes: [:id, :user_id, :_destroy])  #:organization_banner_photo

    end
end

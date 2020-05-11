class DateNotificationsController < ApplicationController
  before_action :set_date_notification, only: [:show, :edit, :update, :destroy]

  # GET /date_notifications
  # GET /date_notifications.json
  def index
    @date_notifications = DateNotification.all
  end

  # GET /date_notifications/1
  # GET /date_notifications/1.json
  def show
  end

  # GET /date_notifications/new
  def new
    @date_notification = DateNotification.new
  end

  # GET /date_notifications/1/edit
  def edit
  end

  # POST /date_notifications
  # POST /date_notifications.json
  def create
    @date_notification = DateNotification.new(date_notification_params)

    respond_to do |format|
      if @date_notification.save
        format.html { redirect_to @date_notification, notice: 'Date notification was successfully created.' }
        format.json { render :show, status: :created, location: @date_notification }
      else
        format.html { render :new }
        format.json { render json: @date_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_notifications/1
  # PATCH/PUT /date_notifications/1.json
  def update
    respond_to do |format|
      if @date_notification.update(date_notification_params)
        format.html { redirect_to @date_notification, notice: 'Date notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_notification }
      else
        format.html { render :edit }
        format.json { render json: @date_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_notifications/1
  # DELETE /date_notifications/1.json
  def destroy
    @date_notification.destroy
    respond_to do |format|
      format.html { redirect_to date_notifications_url, notice: 'Date notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_notification
      @date_notification = DateNotification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def date_notification_params
      params.fetch(:date_notification, {})
    end
end

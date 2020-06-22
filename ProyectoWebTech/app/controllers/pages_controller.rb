class PagesController < ApplicationController
  def home
    if user_signed_in?
      @user_events = Event.joins(:event_invitations).where(event_invitations:{user_id: current_user.id})
    else
    end
  end
end

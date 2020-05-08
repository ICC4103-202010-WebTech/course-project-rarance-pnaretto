class PagesController < ApplicationController
  def home
    @user = User.first
    @user_events = Event.joins(:event_invitations).where(event_invitations:{user_id: @user.id})
    #@user_events = (Event.joins(:event_invitations).where(event_invitations:{user_id: @user.id})).joins(:users).where(users:(id: :user_id))
  end
end

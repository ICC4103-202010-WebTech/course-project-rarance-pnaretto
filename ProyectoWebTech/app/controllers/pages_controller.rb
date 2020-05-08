class PagesController < ApplicationController
  def home
    @user = User.first
      #@user_events = (Event.joins(:users).where(event:{user_id: user.id}).group(:name)).joins(:event_invitations).where(event_invitations:{user_id: 1}).group(:name)
  end
end

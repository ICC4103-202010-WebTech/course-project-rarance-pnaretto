class Search < ApplicationRecord
  def events
    @events ||= find_events
  end
  def users
    @users ||= find_users
  end
  def organizations
    @organizations ||= find_organizations
  end
private
  def find_events
    events= Event.all if eventUser.present?
    events= Event.all if eventOrganization.present?
    events= Event.all if event.present?
    events = events.where(user_id: eventUser).order(:name) if eventUser.present?
    #events = events.where(user_id: userName) if userName.present?
    #orga= Organization.joins(OrganizationEvent).where( name: eventOrganization)
    num = Organization.where(name: eventOrganization).ids[0] if eventOrganization.present?
    events = events.joins(organization_event: [:organization]).where(organizations: {id:num})if eventOrganization.present?
    events= events.where('title LIKE ?', "%#{event}%") if event.present?
    events
  end
  def find_users
    users= User.all if userName.present?
    users = users.where('name LIKE ?', "%"+userName+"%") if userName.present?
    users
  end
  def find_organizations
    organizations = Organization.all if organization.present?
    organizations = organizations.where('name LIKE ?', "%"+organization+"%") if organization.present?
    organizations
  end

end

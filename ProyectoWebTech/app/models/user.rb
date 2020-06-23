class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_one_attached :profile_photo, dependent: :delete_all

  has_many :events
  has_many :event_reports
  has_many :event_invitations
  has_many :event_date_votes
  has_many :date_notifications
  has_many :event_comments
  has_many :event_comment_reports
  has_many :comment_comments
  has_many :comment_comment_reports
  has_many :event_file_reports
  has_many :organizations
  has_many :organization_reports
  has_many :organization_members
  has_many :organization_file_reports

  validates :email, :name, :password, presence: true
  validates :email, uniqueness: true
  #https://github.com/micke/valid_email2
  validates :email,'valid_email_2/email': true

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(name: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end

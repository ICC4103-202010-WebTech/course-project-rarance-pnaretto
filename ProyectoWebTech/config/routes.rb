Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"


  resources :comment_comments, defaults: { format: :html }
  resources :event_comments, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :event_invitations, defaults: { format: :html }
  resources :events
  resources :searches

  resources :event_invitations do
    resources :events
  end

  resources :event_comments, shallow: true do
    resources :comment_comments, shallow: true do
      resources :comment_comment_reports, shallow: true
    end
    resources :event_comment_reports, shallow: true
  end

  resources :comment_comments, shallow: true do
    resources :comment_comment_reports, shallow: true
  end

  resources :events do
    resources :event_dates
    resources :event_comments, shallow: true
    resources :comment_comments
    resources :event_invitations
  end


  resources :organizations, shallow: true do
    resources :organization_members, shallow: true
    resources :organization_files,shallow: true do
      resources :organization_file_reports, shallow:true
    end
    resources :organization_events, shallow: true
    resources :organization_reports, shallow: true
  end

  resources :crud do
    resources :organizations, shallow: true do
      resources :orfanization_members, shallow: true
      resources :organization_files,shallow: true do
        resources :organization_file_reports, shallow:true
      end
      resources :organization_events, shallow: true
      resources :organization_reports, shallow: true
    end
    resources :events, shallow: true do
      resources :comment_comments, shallow: true do
        resources :comment_comment_reports, shallow: true
      end
      resources :event_comments, shallow: true do
        resources :comment_comments, shallow: true do
          resources :comment_comment_reports, shallow: true
        end
        resources :event_comment_reports, shallow: true
      end
      resources :event_files, shallow: true do
        resources :event_files_reports, shallow: true
      end
      resources :event_dates, shallow:true do
        resources :event_date_votes, shallow: true
      end
      resources :event_invitations, shallow: true
      resources :event_reports, shallow: true
    end
    resources :event_comments, shallow: true do
      resources :comment_comments, shallow: true do
        resources :comment_comment_reports, shallow: true
      end
      resources :event_comment_reports, shallow: true
    end
    resources :comment_comments, shallow: true do
      resources :comment_comment_reports, shallow: true
    end
  end
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :messages, shallow:true
      resources :user_reports, shallow: true
      resources :event_comments, shallow: true do
        resources :comment_comments, shallow: true do
          resources :comment_comment_reports, shallow: true
        end
        resources :event_comment_reports, shallow: true
      end
      resources :events, shallow: true do
        resources :event_comments, shallow: true do
          resources :comment_comments, shallow: true do
            resources :comment_comment_reports, shallow: true
          end
          resources :event_comment_reports, shallow: true
        end
        resources :event_files, shallow: true do
          resources :event_files_reports, shallow: true
        end
        resources :event_dates, shallow:true do
          resources :event_date_votes, shallow: true
        end
        resources :date_notification, shallow:true
        resources :event_invitations, shallow: true
        resources :event_reports, shallow: true
      end
      resources :organizations, shallow: true do
        resources :orfanization_members, shallow: true
        resources :organization_files,shallow: true do
          resources :organization_file_reports, shallow:true
        end
        resources :organization_events, shallow: true
        resources :organization_reports, shallow: true
      end
    end
  end

  resources :admin, defaults: { format: :html }
  resources :comment_comments, defaults: { format: :html }
  resources :comment_comment_reports, defaults: { format: :html }
  resources :date_notifications, defaults: { format: :html }
  resources :events, defaults: { format: :html }
  resources :event_comments, defaults: { format: :html }
  resources :event_comment_reports, defaults: { format: :html }
  resources :event_dates, defaults: { format: :html }
  resources :event_date_votes, defaults: { format: :html }
  resources :event_files, defaults: { format: :html }
  resources :event_file_reports, defaults: { format: :html }
  resources :event_invitations, defaults: { format: :html }
  resources :event_reports, defaults: { format: :html }
  resources :messages, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :organization_events, defaults: { format: :html }
  resources :organization_files, defaults: { format: :html }
  resources :organization_file_reports, defaults: { format: :html }
  resources :organization_members, defaults: { format: :html }
  resources :organization_reports, defaults: { format: :html }
  resources :users, defaults: { format: :html }
  resources :users_reports, defaults: { format: :html }

end

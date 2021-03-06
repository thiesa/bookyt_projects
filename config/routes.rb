Rails.application.routes.draw do
  resources :projects do
    resources :activities
  end
  resources :project_states
  resources :activities
  resources :batch_activities

  resources :employees do
    resources :timesheets do
      collection do
        post :start
      end
    end
    resources :activities
  end

  resources :people do
    resources :activities
  end
end

Rails.application.routes.draw do
  

  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :users
    resources :groups
  end

  resources :groups do
    resources :group_members
    resources :expenses
    resources :settlements
    resources :transaction_logs, only: [:index]
  end

  resources :currencies
  
end

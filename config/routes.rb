Rails.application.routes.draw do
  

  get "/home/:name", to:"home#hello" , as: :hello
  get "up" => "rails/health#show", as: :rails_health_check


end

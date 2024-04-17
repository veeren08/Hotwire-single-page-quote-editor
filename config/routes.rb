Rails.application.routes.draw do
  resources :quotes
  root to: "quotes#index"

  get "up" => "rails/health#show", as: :rails_health_check
end

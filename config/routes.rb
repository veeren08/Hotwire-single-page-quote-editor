Rails.application.routes.draw do
  resources :quotes

  get "up" => "rails/health#show", as: :rails_health_check
end

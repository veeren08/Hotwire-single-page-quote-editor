Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  resources :quotes
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check
end

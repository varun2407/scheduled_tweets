Rails.application.routes.draw do
  get "about", to: "about#index"

  root to: "main#index"
  get "sign_up", to: "registrations#new"
  post "users", to: "registrations#create"
end

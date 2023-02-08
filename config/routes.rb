Rails.application.routes.draw do
  get "about", to: "about#index"

  root to: "main#index"

  get "sign_up", to: "registrations#new"
  post"sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post"sign_in", to: "sessions#create"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update" 

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  delete"logout", to: "sessions#destroy"
end

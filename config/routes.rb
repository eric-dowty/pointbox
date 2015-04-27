Rails.application.routes.draw do

  namespace :admin do 
    resources :users
    resources :prizes
    get     '/archive_prizes', to: "prizes#show_archives", as: 'archive_prizes'
    post '/archive_prize/:id', to: "prizes#archive", as: 'archive_prize'
  end

  resources :users
  resources :prizes
  post  "/redeem/:id", to: "awards#update", as: 'redeem_prize'

  root "sessions#new"

  get     "/login", to: "sessions#new"
  post    "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end

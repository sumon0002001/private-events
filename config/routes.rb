Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'events#index'
  resources :users, only: %i[new create show]
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in_new'
  post '/sign_in', to: 'events#enroll'
  resources :events, only: %i[new create show index]
end

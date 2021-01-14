Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'events#index'
  get 'attendances/create'
  resources :users, only: %i[new create show]
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in_new'
  get '/sign_out', to: 'users#sign_out'
  post '/sign_in', to: 'events#enroll'
  resources :events, only: %i[new create show index]
  resources :attendances
end

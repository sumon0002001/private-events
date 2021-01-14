Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users, only: %i[new create show]
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#sign_in_new'
end

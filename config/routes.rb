Rails.application.routes.draw do
  get 'listing', to: 'job_listing#index'
  post 'listing', to: 'job_listing#create'
  get 'auth', to: 'auth#validate_token'
  post 'tag', to: "tag#create"
  
  get 'search', to: 'search#api'
  get 'user/index'
  get 'user/show'
  post 'user', to: 'user#create'
  post 'login', to: 'user#login'
  get 'user/create'
  get 'user/udpdate'
  get 'user/destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

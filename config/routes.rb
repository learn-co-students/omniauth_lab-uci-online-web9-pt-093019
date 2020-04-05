Rails.application.routes.draw do
  get 'welcome/home', to: 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/auth/github', to: 'sessions#create'
  root 'welcome#home'
  
end 
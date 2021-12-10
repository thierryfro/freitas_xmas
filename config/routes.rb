  Rails.application.routes.draw do
    # Devise
    devise_for :users

    root to: 'leeds#home'
    get '/thanks', to: 'leeds#thanks'
    get '/overview', to: 'leeds#overview'
    post 'leeds/create_leed', to: 'leeds#create_leed'
end

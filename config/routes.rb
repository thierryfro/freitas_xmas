  Rails.application.routes.draw do
    # Devise
    devise_for :users

    get 'leeds/home'
    get 'leeds/index'
end

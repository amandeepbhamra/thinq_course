Rails.application.routes.draw do
  resources :course_modules

  resources :course_packages

  resources :courses

    devise_for :users
    
    resources :users

    root to: 'users#index'

end

Rails.application.routes.draw do
  
    devise_for :users
    
    resources :users

  	resources :courses, :course_modules, :course_packages, :course_module_instances, :course_package_instances, :course_instances

    root to: 'users#index'

end

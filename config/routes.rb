Rails.application.routes.draw do
  
    devise_for :users
    
    resources :users

  	resources :course_modules, :course_packages, :course_module_instances, :course_package_instances, :course_instances

  	resources :courses do 
  		resources :course_packages, only: [:show] do
			resources :course_modules, only: [:show]
  		end
  	end

    root to: 'users#index'

end

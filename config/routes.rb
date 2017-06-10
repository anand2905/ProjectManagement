Rails.application.routes.draw do
	
	resources :users do
		resources :projects
		resources :tasks
	end

	resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

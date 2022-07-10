Rails.application.routes.draw do
	root 'pages#home'
	devise_for :users

	# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

	# Defines the root path route ("/")
	# root "articles#index"
	devise_scope :user do
		# Redirests signing out users back to sign-in
		get 'users', to: 'devise/sessions#new'
	end
end

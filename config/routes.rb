Rails.application.routes.draw do
	get 'home/about' => 'home#about'
	root 'home#about'
	devise_for :users
	resources :users, only: [:show, :edit, :update, :destroy]
	resources :posts do
	  resources :comments
	end
	get '/search', to:'posts#search'
end



Rails.application.routes.draw do
	root 'posts#index'
	get 'home/about' => 'home#about'
	devise_for :users
	resources :posts do
		resources :comments
		resources :favorites, only: [:create, :destroy]
	end
	resources :users, only: [:show, :edit, :update, :destroy]
end


Rails.application.routes.draw do
	get 'home/about' => 'home#about'
	root 'home#about'
	devise_for :users
	resources :posts do
		resources :comments
	end
	resources :users, only: [:show, :edit, :update, :destroy]
end



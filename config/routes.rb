Rails.application.routes.draw do
	get 'home/about' => 'home#about'
	root 'home#about'
## ユーザー
	devise_for :users
	resources :users, except: [:new]
	resources :posts do
		resources :comments
	end

	# 検索
	get '/search', to:'posts#search'

## 管理者用
	authenticated :admin do
	  	namespace :admin do
	      resources :posts, except: [:new]
	      resources :users, except: [:new]
	      get 'users/search', to:'users#search', as: :users_search
	      #投稿マスタ用
	      resources :info, only: [:index, :destroy]
	      resources :vaccine, only: [:edit, :new, :create, :update, :destroy]
	      resources :country, only: [:edit, :new, :create, :update, :destroy]
	    end
	end
	devise_for :admins, controllers: {
	    registrations: 'admins/registrations',
	    sessions:      'admins/sessions',
	    passwords: 'admins/passwords'
	}
end



Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :movies, only: [:index]
 resources :directors, only: [:new, :create, :index]

 scope :admin, module: :admin, as: :admin do
	 resources :genres
	end

 resources :genres, only: [:index, :show]
end

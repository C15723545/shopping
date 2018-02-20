Rails.application.routes.draw do
  
  resources :orders
  resources :carts do
	resources :lineitems
  end
  
  resources :lineitems
  resources :products
  resources :customers
  #get 'shop/index'

  controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	get 'logout' => :destroy
  	delete 'logout' => :destroy
    end
	
	root 'shop#index'
	get 'search', :to => 'shop#search'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

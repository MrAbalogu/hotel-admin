Rails.application.routes.draw do
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  root   'pages#home'
  resources :users
  resources :room_categories
  get '/home' => "pages#home"
  get '/chart' => "pages#daily_chart"

  resources :customers
  resources :rooms
  resources :customer_rooms
  resources :book_rooms
  resources :bill_containers

  resources :rooms do 
    resources :customer_rooms
  end 	

  resources :customers do 
  	resources :book_rooms
    resources :bill_containers
  end 

  resources :bill_containers do 
    resources :bills
  end   
  	
end

Rails.application.routes.draw do

  get 'login'         => 'sessions#new'
  get '/home'         => "pages#home"
  get '/chart'        => "pages#daily_chart"
  get '/cityledger'   => "bill_containers#unpaid"
  get '/billchart'    => "pages#bill_chart"
  get 'bin'           => "pages#bin"

  post   'login'   => 'sessions#create'

  delete 'logout'  => 'sessions#destroy'

  root   'pages#home'
  resources :users
  resources :room_categories
  
  resources :reservations
  resources :customers
  resources :rooms
  resources :customer_rooms
  resources :book_rooms
  resources :bill_containers
  resources :bills

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

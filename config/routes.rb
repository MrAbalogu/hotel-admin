Rails.application.routes.draw do
  resources :room_categories
  root 'pages#home'

  resources :room_customers
  resources :customers
  resources :rooms
  resources :customer_rooms
  resources :book_rooms
  resources :bill_containers

  resources :rooms do 
  	resources :room_customers
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

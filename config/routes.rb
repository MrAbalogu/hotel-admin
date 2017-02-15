Rails.application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"

  get  '/home'         => "customers#index"
  get  '/chart'        => "pages#daily_chart"
  get  '/cityledger'   => "bill_containers#unpaid"
  get  '/billchart'    => "pages#bill_chart"
  get  'bin'           => "pages#bin"
  get  'admin' => "pages#admin"

  root   'customers#index'

  resources :users
  resources :room_categories
  resources :sessions
  
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
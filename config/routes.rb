Seatyourself::Application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  root "home#index"
  
  resources :owners, except: :index

  resources :customers, except: :index do
  	resources :reservations, only: :index
  end

  resources :sessions, only: [:new, :create, :destroy]

  resources :restaurants do
  	resources :reservations, except: :index
  end

end

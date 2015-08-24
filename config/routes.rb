Tenzing::Application.routes.draw do
  resources :coffee_intakes
  resources :groceries
  resources :possessions
  resources :categories
  resources :genres
  resources :books
  resources :smoke_breaks

  match 'user/edit' => 'users#edit', :as => :edit_current_user

  match 'signup' => 'users#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login
  match 'quick_smoke' => 'smoke_breaks#quick_smoke', :as => :quick_smoke
  match 'quick_smoke_api' => 'smokes#new', :as => :quick_smoke_api
  match 'quick_coffee' => 'coffee_intakes#quick_coffee', :as => :quick_coffee
  match 'quick_coffee_api' => 'coffee_intakes#new', :as => :quick_coffee_api


  resources :sessions

  resources :users

  get "landings/index"
  root :to => 'landings#index'
  namespace :api, :defaults => {:format => :json} do
    resources :smokes
    resources :coffees
  end
end

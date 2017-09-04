# frozen_string_literal: true
Rails.application.routes.draw do
  resources :dinner_and_diners
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :vegetables, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :pests, only: [:index, :show]
  resources :gardens, except: [:new, :edit]
  resources :dinner_and_diners, except: [:new, :edit]
end

# removed except: [:new, :edit] from pests and vegetables so no one can do curl requests to alter

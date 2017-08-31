# frozen_string_literal: true
Rails.application.routes.draw do
  resources :dinner_and_diners
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :vegetables, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  resources :pests, except: [:new, :edit]
  resources :gardens, except: [:new, :edit]
  resources :dinner_and_diners, except: [:new, :edit]
end

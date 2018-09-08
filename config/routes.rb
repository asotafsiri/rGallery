# frozen_string_literal: true

# routing pages
Rails.application.routes.draw do
  get 'images/new'
  get 'upload' => 'images#new', :as => 'upload'
  root 'images#index'
  resources :images, :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

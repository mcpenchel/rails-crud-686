Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'

  # index
  # get 'restaurants', to: 'restaurants#index', as: :restaurants

  # edit
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # update
  # patch 'restaurants/:id', to: 'restaurants#update'

  # new
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant

  # show
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # create
  # post 'restaurants', to: 'restaurants#create'

  # destroy
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants # does everything that's commented above :ok
end

Rails.application.routes.draw do
  resources :wikis

  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

  resources :users, only: [:update, :show] do
    post 'downgrade', on: :member
  end

  resources :charges, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  #get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  namespace :api do
    namespace :v1 do
      resources :houses, param: :slug #so that we can use our slugs as the primary params instead of id
      resources :reviews, only: [:create, :destroy]
    end
  end
  #route any requests that aren't for existing paths under api/v1 back to our index path
  get '*path' , to: 'pages#index', via: :all
end

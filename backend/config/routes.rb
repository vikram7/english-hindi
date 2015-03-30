Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :show]
      resources :meanings, only: [:index, :show]
      resources :words, only: [:index, :show, :create]
    end
  end
end

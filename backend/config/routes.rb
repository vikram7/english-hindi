Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :meanings, only: [:index, :show]
      resources :words, only: [:index, :show]
    end
  end
end

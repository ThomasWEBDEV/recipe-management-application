Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"

  resources :recipes do
    resources :ingredients, only: [:new, :create, :destroy]
  end
end

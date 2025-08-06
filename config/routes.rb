Rails.application.routes.draw do
  get 'ingredients/new'
  get 'ingredients/create'
  get 'ingredients/destroy'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/edit'
  get 'recipes/update'
  get 'recipes/destroy'
  devise_for :users
  root to: "recipes#index"

  resources :recipes do
    resources :ingredients, only: [:create, :update, :destroy]
  end
end

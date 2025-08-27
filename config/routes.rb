Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"

  resources :recipes do
    resources :ingredients, only: [:new, :create, :destroy]
    # Routes pour favoris
    resource :favorite, only: [:create, :destroy]
  end

  # Route pour voir les favoris d'un utilisateur
  resources :favorites, only: [:index]
end

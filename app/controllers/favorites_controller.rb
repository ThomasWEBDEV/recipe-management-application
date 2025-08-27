class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipe, only: [:create, :destroy]

  def index
    @favorite_recipes = current_user.favorite_recipes.includes(:user)
  end

  def create
    @favorite = current_user.favorites.build(recipe: @recipe)

    if @favorite.save
      redirect_to @recipe, notice: "Recette ajoutée aux favoris ! 💖"
    else
      redirect_to @recipe, alert: "Impossible d'ajouter aux favoris."
    end
  end

  def destroy
    @favorite = current_user.favorites.find_by(recipe: @recipe)

    if @favorite
      @favorite.destroy
      redirect_to @recipe, notice: "Recette retirée des favoris."
    else
      redirect_to @recipe, alert: "Cette recette n'était pas en favoris."
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end

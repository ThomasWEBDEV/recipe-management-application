class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end

    # Empêcher qu'un user ajoute la même recette plusieurs fois en favoris
    add_index :favorites, [:user_id, :recipe_id], unique: true
  end
end

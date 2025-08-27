class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  # Validation d'unicité pour éviter les doublons
  validates :user_id, uniqueness: { scope: :recipe_id }
end

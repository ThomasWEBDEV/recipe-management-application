class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_by, through: :favorites, source: :user

  validates :title, presence: true, length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :category, presence: true, inclusion: { in: %w[entrée plat dessert] }

  # Méthode de recherche
  def self.search(query)
    if query.present?
      where("title ILIKE :query OR description ILIKE :query OR category ILIKE :query",
            query: "%#{query}%")
    else
      all
    end
  end

  # Méthode pour compter les favoris
  def favorites_count
    favorites.count
  end
end

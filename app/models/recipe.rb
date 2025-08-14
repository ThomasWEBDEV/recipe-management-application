class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy

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
end

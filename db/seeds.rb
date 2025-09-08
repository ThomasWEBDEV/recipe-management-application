# db/seeds.rb
# Fichier de données de test pour l'application de recettes

puts "🌱 Début du seeding..."

# Nettoyage des données existantes
puts "🧹 Nettoyage des données existantes..."
Favorite.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all

puts "✅ Données supprimées"

# Création des utilisateurs
puts "👥 Création des utilisateurs..."

users = [
  {
    email: "marie.chef@cuisine.fr",
    password: "password123"
  },
  {
    email: "jean.baker@patisserie.com",
    password: "password123"
  },
  {
    email: "sophie.master@gastronomie.fr",
    password: "password123"
  },
  {
    email: "pierre.cook@saveurs.com",
    password: "password123"
  },
  {
    email: "emma.cuisine@recettes.fr",
    password: "password123"
  },
  {
    email: "julien.chef@gourmet.com",
    password: "password123"
  }
]

created_users = []
users.each do |user_data|
  user = User.create!(user_data)
  created_users << user
  puts "👤 Utilisateur créé: #{user.email}"
end

# Données des recettes avec leurs ingrédients
puts "📝 Création des recettes et ingrédients..."

recipes_data = [
  # ENTRÉES
  {
    title: "Salade César maison",
    description: "Une délicieuse salade César avec sa sauce authentique, des croûtons croustillants et du parmesan frais. Parfaite pour débuter un repas en beauté.",
    category: "entrée",
    difficulty: "facile",
    prep_time: 20,
    cook_time: 10,
    ingredients: [
      { name: "Laitue romaine", quantity: "2 têtes" },
      { name: "Parmesan râpé", quantity: "100g" },
      { name: "Croûtons", quantity: "150g" },
      { name: "Anchois", quantity: "6 filets" },
      { name: "Ail", quantity: "2 gousses" },
      { name: "Moutarde de Dijon", quantity: "1 c. à soupe" },
      { name: "Citron", quantity: "1 pièce" },
      { name: "Huile d'olive", quantity: "6 c. à soupe" },
      { name: "Œuf", quantity: "1 pièce" }
    ]
  },
  {
    title: "Bruschetta aux tomates",
    description: "Tranches de pain grillé garnies de tomates fraîches, basilic et ail. L'antipasto italien par excellence, simple et savoureux.",
    category: "entrée",
    difficulty: "facile",
    prep_time: 15,
    cook_time: 5,
    ingredients: [
      { name: "Pain de campagne", quantity: "8 tranches" },
      { name: "Tomates cerises", quantity: "500g" },
      { name: "Basilic frais", quantity: "1 bouquet" },
      { name: "Ail", quantity: "3 gousses" },
      { name: "Huile d'olive extra vierge", quantity: "4 c. à soupe" },
      { name: "Vinaigre balsamique", quantity: "2 c. à soupe" },
      { name: "Sel", quantity: "1 pincée" },
      { name: "Poivre noir", quantity: "1 pincée" }
    ]
  },
  {
    title: "Velouté de potiron aux châtaignes",
    description: "Un velouté onctueux et réconfortant aux saveurs automnales. La douceur du potiron se marie parfaitement avec les châtaignes grillées.",
    category: "entrée",
    difficulty: "moyen",
    prep_time: 25,
    cook_time: 35,
    ingredients: [
      { name: "Potiron", quantity: "1kg" },
      { name: "Châtaignes", quantity: "200g" },
      { name: "Oignon", quantity: "1 pièce" },
      { name: "Bouillon de légumes", quantity: "1L" },
      { name: "Crème fraîche", quantity: "200ml" },
      { name: "Beurre", quantity: "30g" },
      { name: "Muscade", quantity: "1 pincée" },
      { name: "Sel et poivre", quantity: "au goût" }
    ]
  },
  {
    title: "Carpaccio de saumon à l'aneth",
    description: "Fines lamelles de saumon frais marinées dans l'huile d'olive et le citron, parsemées d'aneth et de câpres. Élégant et raffiné.",
    category: "entrée",
    difficulty: "moyen",
    prep_time: 30,
    cook_time: 0,
    ingredients: [
      { name: "Saumon frais", quantity: "400g" },
      { name: "Aneth frais", quantity: "1 bouquet" },
      { name: "Citron vert", quantity: "2 pièces" },
      { name: "Huile d'olive", quantity: "4 c. à soupe" },
      { name: "Câpres", quantity: "2 c. à soupe" },
      { name: "Roquette", quantity: "100g" },
      { name: "Fleur de sel", quantity: "1 pincée" },
      { name: "Poivre rose", quantity: "1 c. à café" }
    ]
  },

  # PLATS
  {
    title: "Bœuf bourguignon traditionnel",
    description: "Le grand classique de la cuisine française ! Une viande fondante mijotée dans le vin rouge avec des légumes savoureux. Un plat qui réchauffe le cœur.",
    category: "plat",
    difficulty: "difficile",
    prep_time: 30,
    cook_time: 180,
    ingredients: [
      { name: "Bœuf à braiser", quantity: "1.5kg" },
      { name: "Vin rouge de Bourgogne", quantity: "750ml" },
      { name: "Lardons", quantity: "200g" },
      { name: "Champignons de Paris", quantity: "500g" },
      { name: "Carottes", quantity: "4 pièces" },
      { name: "Oignons", quantity: "3 pièces" },
      { name: "Ail", quantity: "4 gousses" },
      { name: "Bouquet garni", quantity: "1 pièce" },
      { name: "Farine", quantity: "2 c. à soupe" },
      { name: "Beurre", quantity: "50g" },
      { name: "Concentré de tomate", quantity: "2 c. à soupe" }
    ]
  },
  {
    title: "Risotto aux champignons porcini",
    description: "Un risotto crémeux aux champignons porcini séchés et frais. La technique italienne authentique pour un plat onctueux et parfumé.",
    category: "plat",
    difficulty: "moyen",
    prep_time: 20,
    cook_time: 30,
    ingredients: [
      { name: "Riz Arborio", quantity: "320g" },
      { name: "Champignons porcini séchés", quantity: "30g" },
      { name: "Champignons de Paris", quantity: "300g" },
      { name: "Bouillon de volaille", quantity: "1.5L" },
      { name: "Vin blanc sec", quantity: "150ml" },
      { name: "Parmesan", quantity: "100g" },
      { name: "Échalotes", quantity: "2 pièces" },
      { name: "Beurre", quantity: "80g" },
      { name: "Huile d'olive", quantity: "3 c. à soupe" },
      { name: "Persil plat", quantity: "1 bouquet" }
    ]
  },
  {
    title: "Curry de poulet au lait de coco",
    description: "Un curry parfumé et épicé avec des morceaux de poulet tendres dans une sauce crémeuse au lait de coco. Accompagné de riz basmati parfumé.",
    category: "plat",
    difficulty: "moyen",
    prep_time: 25,
    cook_time: 45,
    ingredients: [
      { name: "Filets de poulet", quantity: "800g" },
      { name: "Lait de coco", quantity: "400ml" },
      { name: "Pâte de curry rouge", quantity: "3 c. à soupe" },
      { name: "Oignon", quantity: "1 pièce" },
      { name: "Poivron rouge", quantity: "1 pièce" },
      { name: "Courgettes", quantity: "2 pièces" },
      { name: "Gingembre frais", quantity: "3cm" },
      { name: "Ail", quantity: "3 gousses" },
      { name: "Basilic thaï", quantity: "1 bouquet" },
      { name: "Huile de coco", quantity: "2 c. à soupe" }
    ]
  },
  {
    title: "Saumon grillé aux légumes de saison",
    description: "Pavé de saumon grillé accompagné de légumes colorés de saison. Un plat équilibré, sain et savoureux, parfait pour les beaux jours.",
    category: "plat",
    difficulty: "facile",
    prep_time: 20,
    cook_time: 25,
    ingredients: [
      { name: "Pavés de saumon", quantity: "4 pièces (150g chacun)" },
      { name: "Courgettes", quantity: "3 pièces" },
      { name: "Aubergine", quantity: "1 pièce" },
      { name: "Tomates cerises", quantity: "300g" },
      { name: "Poivron jaune", quantity: "1 pièce" },
      { name: "Citron", quantity: "2 pièces" },
      { name: "Herbes de Provence", quantity: "2 c. à café" },
      { name: "Huile d'olive", quantity: "5 c. à soupe" },
      { name: "Sel et poivre", quantity: "au goût" }
    ]
  },
  {
    title: "Pad Thaï aux crevettes",
    description: "Le célèbre plat thaïlandais aux nouilles de riz sautées avec des crevettes, des légumes croquants et une sauce aigre-douce authentique.",
    category: "plat",
    difficulty: "difficile",
    prep_time: 30,
    cook_time: 15,
    ingredients: [
      { name: "Nouilles de riz", quantity: "300g" },
      { name: "Crevettes décortiquées", quantity: "400g" },
      { name: "Pousses de soja", quantity: "200g" },
      { name: "Œufs", quantity: "2 pièces" },
      { name: "Échalotes", quantity: "2 pièces" },
      { name: "Ail", quantity: "3 gousses" },
      { name: "Sauce de poisson", quantity: "3 c. à soupe" },
      { name: "Sucre de palme", quantity: "2 c. à soupe" },
      { name: "Citron vert", quantity: "2 pièces" },
      { name: "Cacahuètes grillées", quantity: "100g" },
      { name: "Coriandre fraîche", quantity: "1 bouquet" }
    ]
  },

  # DESSERTS
  {
    title: "Tarte aux pommes grand-mère",
    description: "La tarte aux pommes comme la faisait grand-mère, avec une pâte brisée maison et des pommes fondantes à la cannelle. Un classique intemporel.",
    category: "dessert",
    difficulty: "moyen",
    prep_time: 45,
    cook_time: 40,
    ingredients: [
      { name: "Pâte brisée", quantity: "1 rouleau" },
      { name: "Pommes Golden", quantity: "6 pièces" },
      { name: "Sucre en poudre", quantity: "80g" },
      { name: "Beurre", quantity: "30g" },
      { name: "Cannelle en poudre", quantity: "1 c. à café" },
      { name: "Œuf", quantity: "1 pièce (pour dorer)" },
      { name: "Compote de pommes", quantity: "3 c. à soupe" },
      { name: "Sucre vanillé", quantity: "1 sachet" }
    ]
  },
  {
    title: "Tiramisu authentique",
    description: "Le véritable tiramisu italien avec ses couches de biscuits imbibés de café et sa mousse onctueuse au mascarpone. Un dessert irrésistible !",
    category: "dessert",
    difficulty: "moyen",
    prep_time: 40,
    cook_time: 0,
    ingredients: [
      { name: "Biscuits à la cuillère", quantity: "30 pièces" },
      { name: "Mascarpone", quantity: "500g" },
      { name: "Œufs", quantity: "6 pièces" },
      { name: "Sucre", quantity: "150g" },
      { name: "Café expresso fort", quantity: "500ml" },
      { name: "Amaretto", quantity: "4 c. à soupe" },
      { name: "Cacao en poudre", quantity: "3 c. à soupe" },
      { name: "Chocolat noir", quantity: "100g (pour décorer)" }
    ]
  },
  {
    title: "Crème brûlée à la vanille",
    description: "Le dessert français par excellence ! Une crème onctueuse parfumée à la vanille surmontée d'une fine couche de caramel craquant.",
    category: "dessert",
    difficulty: "difficile",
    prep_time: 30,
    cook_time: 60,
    ingredients: [
      { name: "Crème liquide 35%", quantity: "500ml" },
      { name: "Jaunes d'œufs", quantity: "6 pièces" },
      { name: "Sucre en poudre", quantity: "100g" },
      { name: "Gousse de vanille", quantity: "1 pièce" },
      { name: "Sucre roux", quantity: "6 c. à soupe (pour caraméliser)" }
    ]
  },
  {
    title: "Fondant au chocolat coulant",
    description: "Individual chocolate lava cake avec un cœur coulant au chocolat noir. Servi tiède avec une boule de glace vanille, c'est le paradis !",
    category: "dessert",
    difficulty: "moyen",
    prep_time: 20,
    cook_time: 12,
    ingredients: [
      { name: "Chocolat noir 70%", quantity: "200g" },
      { name: "Beurre doux", quantity: "200g" },
      { name: "Œufs entiers", quantity: "4 pièces" },
      { name: "Sucre en poudre", quantity: "100g" },
      { name: "Farine", quantity: "50g" },
      { name: "Beurre pour ramequins", quantity: "20g" },
      { name: "Sucre glace", quantity: "pour saupoudrer" }
    ]
  },
  {
    title: "Cheesecake aux fruits rouges",
    description: "Un cheesecake new-yorkais crémeux sur base de spéculoos, garni de fruits rouges frais. Frais et gourmand, parfait pour l'été.",
    category: "dessert",
    difficulty: "facile",
    prep_time: 25,
    cook_time: 60,
    ingredients: [
      { name: "Spéculoos", quantity: "200g" },
      { name: "Beurre fondu", quantity: "80g" },
      { name: "Fromage frais type Philadelphia", quantity: "600g" },
      { name: "Sucre en poudre", quantity: "150g" },
      { name: "Œufs", quantity: "3 pièces" },
      { name: "Crème fraîche épaisse", quantity: "200ml" },
      { name: "Fruits rouges mélangés", quantity: "400g" },
      { name: "Coulis de fruits rouges", quantity: "150ml" },
      { name: "Gélatine", quantity: "2 feuilles" }
    ]
  }
]

# Création des recettes avec leurs ingrédients
created_recipes = []
recipes_data.each_with_index do |recipe_data, index|
  # Assignation aléatoire d'un utilisateur
  user = created_users.sample

  # Extraction des ingrédients
  ingredients_data = recipe_data.delete(:ingredients)

  # Création de la recette
  recipe = user.recipes.create!(recipe_data)
  created_recipes << recipe

  # Ajout de vues aléatoires (entre 5 et 150)
  recipe.update!(views_count: rand(5..150))

  puts "📄 Recette créée: #{recipe.title} (#{recipe.category}) - #{recipe.difficulty}"

  # Création des ingrédients
  ingredients_data.each do |ingredient_data|
    recipe.ingredients.create!(ingredient_data)
  end

  puts "   └── #{ingredients_data.length} ingrédients ajoutés"
end

# Création de favoris réalistes
puts "❤️  Création des favoris..."

# Chaque utilisateur ajoute entre 2 et 8 recettes en favoris
created_users.each do |user|
  favorites_count = rand(2..8)
  favorite_recipes = created_recipes.sample(favorites_count)

  favorite_recipes.each do |recipe|
    # Éviter qu'un utilisateur ajoute ses propres recettes en favoris
    next if recipe.user == user

    begin
      user.favorites.create!(recipe: recipe)
    rescue ActiveRecord::RecordInvalid
      # Ignorer si déjà en favoris (validation d'unicité)
    end
  end

  puts "👤 #{user.email.split('@').first.capitalize}: #{user.favorites.count} favoris"
end

# Affichage des statistiques finales
puts "\n📊 STATISTIQUES FINALES"
puts "=" * 50
puts "👥 Utilisateurs créés: #{User.count}"
puts "📝 Recettes créées: #{Recipe.count}"
puts "   ├── Entrées: #{Recipe.where(category: 'entrée').count}"
puts "   ├── Plats: #{Recipe.where(category: 'plat').count}"
puts "   └── Desserts: #{Recipe.where(category: 'dessert').count}"
puts "🥕 Ingrédients créés: #{Ingredient.count}"
puts "❤️  Favoris créés: #{Favorite.count}"
puts "👁️  Vues totales: #{Recipe.sum(:views_count)}"

puts "\n🎯 DONNÉES DE TEST"
puts "=" * 50
puts "📧 Emails de connexion:"
created_users.each do |user|
  puts "   • #{user.email} (mot de passe: password123)"
end

puts "\n🏆 TOP 3 RECETTES LES PLUS VUES"
puts "=" * 50
Recipe.order(views_count: :desc).limit(3).each_with_index do |recipe, index|
  puts "#{index + 1}. #{recipe.title} - #{recipe.views_count} vues (#{recipe.category})"
end

puts "\n✅ Seeding terminé avec succès !"
puts "🚀 Vous pouvez maintenant tester l'application avec ces données."

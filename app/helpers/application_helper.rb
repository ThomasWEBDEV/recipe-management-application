# app/helpers/application_helper.rb
module ApplicationHelper
  def user_avatar(user, size: 40)
    return "" unless user&.email

    # Extraire les initiales (2 premières lettres de l'email)
    initials = user.email[0..1].upcase

    # Générer une couleur basée sur l'email (consistante)
    colors = ['#FF6B6B', '#4ECDC4', '#45B7D1', '#FFA07A', '#98D8C8', '#F7DC6F', '#BB8FCE', '#85C1E9']
    color = colors[user.email.sum % colors.length]

    tag.div(initials,
      class: "d-inline-flex align-items-center justify-content-center rounded-circle text-white fw-bold",
      style: "width: #{size}px; height: #{size}px; background-color: #{color}; font-size: #{size/2.5}px;"
    )
  end
end

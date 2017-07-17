Service.destroy_all
Review.destroy_all
User.destroy_all

authorized_admin = [
  ["Admin", "admin@admin.com", "adminpass"],
]

authorized_admin.each do |user_name, email, password|
  User.create!(user_name: "Artemis",
              email: "artemis@artemis.com",
              password: "goodgoddess",
              admin: true)
end


user1 = User.create!(user_name: "Demeter",
                    email: "demeter@email.com",
                    password: "goodgoddess",
                    password_confirmation: "goodgoddess",
                    admin: false)

user2 = User.create!(user_name: "Hebe",
                    email: "hebe@email.com",
                    password: "goodgoddess",
                    password_confirmation: "goodgoddess",
                    admin: false)

12.times do |i|
  service = Service.create!(name: Faker::Cat.unique.name,
                            description: Faker::Hipster.sentence(3),
                            price: Faker::Commerce.price)
  rand(2..5).times do |i|
    review = service.reviews.create!(user_id: User.order("RANDOM()").first.id,
                                    author: Faker::Ancient.primordial,
                                    content: Faker::RuPaul.quote)
  end
end

p "Created #{Service.count} services"
p "Created #{Review.count} reviews"
p "Created #{User.count} users"

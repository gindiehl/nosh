Service.destroy_all
Review.destroy_all
User.destroy_all

user = User.create!(user_name: "Artemis", email: "artemis@email.com", password: "mygoddess", password_confirmation: "mygoddess", admin: true)
user1 = User.create!(user_name: "Demeter", email: "demeter@email.com", password: "mygoddess", password_confirmation: "mygoddess", admin: false)
user2 = User.create!(user_name: "Hebe", email: "hebe@email.com", password: "mygoddess", password_confirmation: "mygoddess", admin: false)

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

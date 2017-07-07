Service.destroy_all

12.times do |i|
  service = Service.create!(name: Faker::Cat.unique.name,
                            description: Faker::Lorem.sentences(3),
                            price: Faker::Commerce.price)


end

p "Created #{Service.count} services"                        

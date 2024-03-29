# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Bank.destroy_all
CreditCard.destroy_all


10.times do
    Customer.create(name: Faker::Name.name, age: rand(18..60))
end

10.times do
    Bank.create(name: Faker::Bank.unique.name, city: Faker::Address.city)
end

10.times do
    CreditCard.create(card_name: Faker::Color.unique.color_name, customer: Customer.all.sample, bank: Bank.all.sample)
end







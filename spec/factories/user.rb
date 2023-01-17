FactoryBot.define do
  factory :user do
    name { Faker::Lorem.characters(number: 5) }
    email { Faker::Internet.email }
    password { Faker::Lorem.characters(number: 7) }
  end
end

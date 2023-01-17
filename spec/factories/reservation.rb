FactoryBot.define do
  factory :reservation do
    created_at { DateTime.now }
    question { Faker::Lorem.characters(number: 20) }
    user
    counseling
  end
end

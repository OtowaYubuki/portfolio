FactoryBot.define do
  factory :review do
    created_at { DateTime.now }
    comment { Faker::Lorem.characters(number: 10) }
    score { 4 }
    user
    influencer
  end
end

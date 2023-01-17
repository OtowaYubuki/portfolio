FactoryBot.define do
  factory :counseling do
    name { Faker::Lorem.characters(number: 5) }
    content { Faker::Lorem.characters(number: 10) }
    people { 3 }
    created_at { DateTime.now }
    starttime { Time.now }
    day { Date.today }
    influencer
  end
end

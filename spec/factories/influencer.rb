FactoryBot.define do
  factory :influencer do
    name { Faker::Lorem.characters(number: 5) }
    profile { Faker::Lorem.characters(number: 20) }
    genre { Faker::Lorem.characters(number: 5) }
    counseling
    after(:build) do |influencer|
      influencer.images.attach(io: File.open('app/assets/images/22614794.png'), filename: '22614794.png', content_type: 'image/png')
    end
  end
end

FactoryBot.define do
  factory :influencer do
    name { Faker::Lorem.characters(number: 5) }
    profile { Faker::Lorem.characters(number: 20) }
    genre { Faker::Lorem.characters(number: 5) }
    after(:build) do |influencer|
      influencer.influencer_image.attach(io: File.open('app/assets/images/22614794.png'), filename: '22614794.png')
    end
  end
end

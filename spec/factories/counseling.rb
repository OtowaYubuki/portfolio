FactoryBot.define do
  factory :counseling do
    name { Faker::Lorem.characters(number: 5) }
    content { Faker::Lorem.characters(number: 10) }
    people { 3 }
    created_at { DateTime.now }
    starttime { Time.now }
    day { Date.today }
    influencer
    after(:build) do |influencer|
      influencer.images.attach(io: File.open('app/assets/images/22614794.png'), filename: '22614794.png', content_type: 'image/png')
    end
  end
end

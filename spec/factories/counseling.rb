FactoryBot.define do
  factory :counseling do
    name { Faker::Lorem.characters(number: 5) }
    content { Faker::Lorem.characters(number: 10) }
    people { 3 }
    created_at { DateTime.now }
    influencer_id { 1 }
    starttime { Time.now }
    day { Date.today }
    influencer
    after(:build) do |counseling|
      counseling.images.attach(io: File.open('app/assets/images/25307560_s.jpg'), filename: '25307560_s.jpg', content_type: 'image/jpg')
    end
  end
end

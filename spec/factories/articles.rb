FactoryBot.define do
    factory :article do
      content {Faker::Lorem.characters(number: 300)}
    end
  end
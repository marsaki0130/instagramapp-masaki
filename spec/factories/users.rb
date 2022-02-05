FactoryBot.define do
  factory :user do
    username {'keisuke'}
    email { Faker::Internet.email}
    password { 'password'}
  end
end
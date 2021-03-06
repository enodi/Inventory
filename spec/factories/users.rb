FactoryBot.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
    permission "admin"
  end
end
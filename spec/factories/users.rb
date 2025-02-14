FactoryBot.define do
  factory :user do
    nickname { "nickname" }
    email { "test@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end

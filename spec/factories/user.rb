FactoryBot.define do
  factory :user, class: User do
    name { "User 1" }
    email { "user@mail.com" }
    password { "password" }
  end
end

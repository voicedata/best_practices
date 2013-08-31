# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "my_mail#{n}@mymail.com" }
    password              "password"
    password_confirmation "password"
  end
end

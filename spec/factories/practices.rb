# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :practice do
    title  { Faker::Lorem.sentence}
    content  { Faker::Lorem.paragraph}
    user nil
  end
end

FactoryBot.define do
  factory :song do
    name  { Faker::Name.name }
    duration 2
  end
end

FactoryGirl.define do
  factory :article do
    owner
    name { Faker::Name.name }
    price Faker::Commerce.price
    description "MyText"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    name "MyString"
    date_created "MyString"
    purchased false
    listing_date "MyString"
    type ""
    cost 1
  end
end

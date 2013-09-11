# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer, :class => 'Customers' do
    name "MyString"
    email "MyString"
    dollar_amount_purchased 1
  end
end

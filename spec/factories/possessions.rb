# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :possession do
    category
    title "MyString"
    user
    description "MyText"
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grocery do
    item "MyString"
    location "MyString"
    user_id 1
  end
end

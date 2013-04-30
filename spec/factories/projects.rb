# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    title "MyString"
    description "MyText"
    date "2013-04-30"
    protocol "MyText"
  end
end

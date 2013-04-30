# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :thesis do
    title "MyString"
    description "MyText"
    abstract "MyText"
    year "2013-04-30"
    bibliography "MyText"
  end
end

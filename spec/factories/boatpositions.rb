# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :boatposition, :class => 'Boatpositions' do
    boatname "MyString"
  end
end

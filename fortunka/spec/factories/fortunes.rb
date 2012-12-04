# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fortune do
    nazwa "MyText"
    ilosc 1
    cena "9.99"
    opis "MyText"
  end
end

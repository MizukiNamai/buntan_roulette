FactoryBot.define do
  factory :task do
    roulette_id { 1 }
    task { "MyString" }
    status { "MyString" }
    name { "MyString" }
  end
end

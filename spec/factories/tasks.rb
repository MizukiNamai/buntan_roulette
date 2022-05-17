FactoryBot.define do
  factory :task do
    roulette_id { 1 }
    tasks { 'MyString' }
    status { 1 }
    name { 'MyString' }
  end
end

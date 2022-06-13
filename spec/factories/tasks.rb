FactoryBot.define do
  factory :task do
    page { nil }
    task { "MyString" }
    status { "MyString" }
    name { "MyString" }
    user_id { 1 }
  end
end

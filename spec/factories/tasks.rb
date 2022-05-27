FactoryBot.define do
  factory :task do
    page_id { 1 }
    task { "MyString" }
    status { "MyString" }
    name { "MyString" }
  end
end

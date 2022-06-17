FactoryBot.define do
  factory :task do
    page { nil }
    task { 'MyString' }
    status_id { 1 }
    name { 'MyString' }
    user_id { 1 }
  end
end

FactoryBot.define do
  factory :contact do
    name { "MyString" }
    email { "MyString" }
  end

  factory :invalid_contact, parent: :contact do
    name { nil }
    email { nil }
  end
end

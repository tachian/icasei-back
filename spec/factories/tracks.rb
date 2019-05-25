FactoryBot.define do
  factory :track do
    guid { "MyString" }
    url { "MyString" }
    created { "2019-05-25 11:58:02" }
  end

  factory :invalid_track, parent: :track do
    guid { nil }
  end
end

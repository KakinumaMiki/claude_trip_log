FactoryBot.define do
  factory :prefecture do
    sequence(:code) { |n| n }
    name { "東京都" }
    name_en { "Tokyo" }
    region { "関東" }

    trait :hokkaido do
      code { 1 }
      name { "北海道" }
      name_en { "Hokkaido" }
      region { "北海道" }
    end
  end
end

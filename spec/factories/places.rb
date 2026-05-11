FactoryBot.define do
  factory :place do
    association :prefecture
    name { "清水寺" }
    address { "" }
    memo { "" }
    status { :visited }

    trait :visited do
      status { :visited }
    end

    trait :want_to_visit do
      status { :want_to_visit }
    end
  end
end

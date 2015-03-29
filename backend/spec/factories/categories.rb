FactoryGirl.define do
  factory :category do
    sequence(:part_of_speech) { |n| "part of speech #{n}" }
  end
end

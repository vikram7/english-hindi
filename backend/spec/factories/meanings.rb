FactoryGirl.define do
  factory :meaning do
    sequence(:text) { |n| "This has meaning #{n}" }
    category
  end
end

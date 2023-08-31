# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    user
    description { FFaker::Lorem.sentence }
    status { "MyString" }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :note do
    message { FFaker::Lorem.sentence }
  end
end

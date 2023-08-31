# frozen_string_literal: true

FactoryBot.define do
  factory :person do
    name { FFaker::Name.name }
  end
end

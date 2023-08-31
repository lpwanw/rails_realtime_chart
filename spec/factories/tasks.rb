# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    person
    description { FFaker::Lorem.sentence }
    status { Task.statuses.keys.sample }
  end
end

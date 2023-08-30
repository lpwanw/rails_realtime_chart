# frozen_string_literal: true

# generate example note

(1..28).each do |day|
  FactoryBot.create_list(:note, rand(20), created_at: day.days.ago)
end

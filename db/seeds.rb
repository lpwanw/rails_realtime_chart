# frozen_string_literal: true

# generate example note

(1..28).reverse_each do |day|
  count = rand(20)
  created_at = day.days.ago
  count.times do
    sleep(0.3)
    FactoryBot.create :note, created_at:
  end
end

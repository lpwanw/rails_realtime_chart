# frozen_string_literal: true

# generate example note

case ENV.fetch("type", nil)
when "note"
  (1..28).reverse_each do |day|
    count = rand(20)
    created_at = day.days.ago
    count.times do
      sleep(0.3)
      FactoryBot.create :note, created_at:
    end
  end
when "task"
  FactoryBot.create_list(:person, 10).each do |person|
    FactoryBot.create_list(:task, 20, person:, status: :initialized)
  end

  loop do
    task = Task.where.not(status: :completed).sample

    break unless task

    sleep(0.1)
    case task.status
    when "initialized"
      task.in_process!
    when "in_process"
      task.completed!
    end
  end
end

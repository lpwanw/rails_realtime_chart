# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :person

  enum status: {
    initialized: "initialized",
    in_process: "in_process",
    completed: "completed"
  }

  validates :description, presence: true
  validates :description, length: { maximum: 255 }

  validates :status, presence: true

  delegate :name, to: :person, prefix: true

  after_save_commit :update_chart

  private

  def update_chart
    broadcast_replace_to :tasks_chart_data, target: "tasks-chart-data", partial: "tasks/task_chart"
  end
end

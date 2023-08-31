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
end

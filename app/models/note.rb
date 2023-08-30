# frozen_string_literal: true

class Note < ApplicationRecord
  validates :message, length: { maximum: 255 }

  after_create_commit(lambda {
    broadcast_replace_to :note_chart_data, target: "note-chart-data", partial: "notes/note_chart_data"
  })
end

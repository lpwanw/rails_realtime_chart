# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :message

      t.timestamps
    end
  end
end

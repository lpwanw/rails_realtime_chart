# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :person, null: false, foreign_key: true
      t.string :description, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :tasks, dependent: :delete_all

  validates :name, presence: true
  validates :name, length: { maximum: 255 }
end

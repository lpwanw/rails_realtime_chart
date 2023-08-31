# frozen_string_literal: true

class Person < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 255 }
end

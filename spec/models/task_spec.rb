# frozen_string_literal: true

require "rails_helper"

RSpec.describe Task do
  describe "Associations" do
    it { is_expected.to belong_to(:person) }
  end

  describe "Enums" do
    let(:status_enum) do
      {
        initialized: "initialized",
        in_process: "in_process",
        completed: "completed"
      }
    end

    it { is_expected.to define_enum_for(:status).with_values(status_enum).backed_by_column_of_type(:string) }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(255) }
    it { is_expected.to validate_presence_of(:status) }
  end
end

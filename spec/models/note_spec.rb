# frozen_string_literal: true

require "rails_helper"

RSpec.describe Note do
  describe "Validations" do
    it { is_expected.to validate_length_of(:message).is_at_most(255) }
  end
end

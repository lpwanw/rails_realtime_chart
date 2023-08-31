# frozen_string_literal: true

class NotesController < ApplicationController
  def index; end

  def query
    render json: Note.group_by_day(:created_at).count
  end
end

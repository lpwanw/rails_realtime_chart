# frozen_string_literal: true

class TasksController < ApplicationController
  def index; end

  def query
    data = Task.statuses.keys.map do |status|
      {
        name: status,
        data: Task.public_send(status).group(:person).count.transform_keys(&:name)
      }
    end
    render json: data
  end
end

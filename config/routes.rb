# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  resources :notes, only: %(index) do
    collection do
      get :query
    end
  end
end

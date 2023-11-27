# frozen_string_literal: true

json.extract! diocese, :id, :name, :town_id, :created_at, :updated_at
json.url diocese_url(diocese, format: :json)

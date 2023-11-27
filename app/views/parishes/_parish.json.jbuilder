# frozen_string_literal: true

json.extract! parish, :id, :name, :town_id, :diocese_id, :created_at, :updated_at
json.url parish_url(parish, format: :json)

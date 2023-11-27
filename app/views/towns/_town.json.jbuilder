# frozen_string_literal: true

json.extract! town, :id, :name, :country_id, :created_at, :updated_at
json.url town_url(town, format: :json)

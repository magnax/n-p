# frozen_string_literal: true

json.array! @towns, partial: 'towns/town', as: :town

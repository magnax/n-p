# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Dioceses', type: :request do
  describe 'GET /dioceses' do
    it 'works! (now write some real specs)' do
      get dioceses_path
      expect(response).to have_http_status(200)
    end
  end
end

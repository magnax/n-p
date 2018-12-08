require 'rails_helper'

RSpec.describe "Parishes", type: :request do
  describe "GET /parishes" do
    it "works! (now write some real specs)" do
      get parishes_path
      expect(response).to have_http_status(200)
    end
  end
end

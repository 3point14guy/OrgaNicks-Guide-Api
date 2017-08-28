require 'rails_helper'

RSpec.describe "Pests", type: :request do
  describe "GET /pests" do
    it "works! (now write some real specs)" do
      get pests_path
      expect(response).to have_http_status(200)
    end
  end
end

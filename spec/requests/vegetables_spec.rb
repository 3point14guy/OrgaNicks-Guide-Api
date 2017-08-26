require 'rails_helper'

RSpec.describe "Vegetables", type: :request do
  describe "GET /vegetables" do
    it "works! (now write some real specs)" do
      get vegetables_path
      expect(response).to have_http_status(200)
    end
  end
end

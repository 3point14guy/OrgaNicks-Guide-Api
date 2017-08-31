require 'rails_helper'

RSpec.describe "DinnerAndDiners", type: :request do
  describe "GET /dinner_and_diners" do
    it "works! (now write some real specs)" do
      get dinner_and_diners_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "Tools::CoreKeeper::StatCalculators", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tools/core_keeper//stat_calculator/index"
      expect(response).to have_http_status(:success)
    end
  end

end

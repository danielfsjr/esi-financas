require 'rails_helper'

RSpec.describe "Transacoes", type: :request do
  describe "GET /transacoes/new" do
    it "returns http success" do
      get "/transacoes/new"
      expect(response).to have_http_status(:success)
    end
  end
end

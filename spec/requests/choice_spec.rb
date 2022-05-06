require 'rails_helper'

RSpec.describe "Choices", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/choice/new"
      expect(response).to have_http_status(:success)
    end
  end

end

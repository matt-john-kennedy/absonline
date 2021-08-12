require 'rails_helper'

RSpec.describe "Collections", type: :request do
  describe "GET /page" do
    it "returns http success" do
      get "/collection/page"
      expect(response).to have_http_status(:success)
    end
  end

end

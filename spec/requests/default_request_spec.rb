require 'rails_helper'

RSpec.describe 'Defaults', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/default/index'
      expect(response).to have_http_status(:success)
    end
  end
end

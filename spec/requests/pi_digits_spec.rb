require 'rails_helper'

RSpec.describe "calculating pi digits endpoint" do
  describe 'GET /pi_digits' do
    it 'returns pi digits' do
      get '/pi_digits'
      expect(response).to have_http_status(200)
      expect(response.body).to include("pi")
      expect(response.body).to include("accuracy")
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Invoices', type: :request do
  describe 'GET /index' do
    let(:url) { '/invoices' }

    it 'returns all the existing invoices' do
      get url
      expect(response).to have_http_status(:successful)
      expect(JSON.parse(response.body).count).to eq(9275)
    end

    it 'returns all the invoices filtering by date' do
      get url, params: { start_date: '02/05/2022',
                         end_date: '03/05/2022' }
      expect(response).to have_http_status(:successful)
      expect(JSON.parse(response.body).count).to eq(164)
    end
  end
end

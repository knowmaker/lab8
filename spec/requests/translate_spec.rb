# frozen_string_literal: true

#require 'rails_helper'

RSpec.describe 'Translates', type: :request do
  describe 'GET /input' do
    it 'returns http success' do
      get '/translate/input'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /output' do
    it 'returns http success' do
      get '/translate/output'
      expect(response).to have_http_status(:success)
    end
  end

  context 'should give correct result' do
    it 'with 6' do
      get '/translate/output?ch=6'
      expect(assigns[:result]).to eq 3
    end
    it 'with 9' do
      get '/translate/output?ch=9'
      expect(assigns[:result]).to eq 9
    end
  end
end

require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#home' do
    it 'should redirect to the tickets path' do
      get :home
      expect(response).to redirect_to(tickets_path)
    end
  end
end

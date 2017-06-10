require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
  describe '#index' do
    it 'should respond successfully' do
      get :index
      expect(response).to be_successful
    end
  end
end

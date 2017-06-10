require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
  describe '#index' do
    it 'should respond successfully' do
      get :index
      expect(response).to be_successful
    end
  end

  describe '#new' do
    it 'should respond successfully' do
      get :new
      expect(response).to be_successful
    end
  end
end

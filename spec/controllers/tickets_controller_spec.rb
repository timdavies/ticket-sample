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

  describe '#create' do
    let(:order) { Order.create }

    context 'valid params provided' do
      let(:params) do
        {
          ticket: {
            email: 'foo@foo.com',
            order_id: order.id,
            problem: Ticket::PROBLEMS.keys.first,
            resolution: Ticket::RESOLUTIONS.keys.first
          }
        }
      end

      it 'should create a ticket' do
        expect do
          post :create, params: params
        end.to change(Ticket, :count).by(1)
      end

      it 'should redirect to the tickets page' do
        post :create, params: params
        expect(response).to redirect_to tickets_path
      end

      it 'should display a flash message' do
        post :create, params: params
      end
    end

    context 'invalid params provided' do
      let(:params) do
        { ticket: { email: 'foo@foo.com' } }
      end

      it 'should re-render the page to display errors' do
        post :create, params: params
        expect(subject).to render_template :new
        expect(response).to be_successful
      end
    end
  end
end

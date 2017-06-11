require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new(id: 1234, created_at: '2010-01-01'.to_date) }

  describe '#title' do
    it 'should return an informative string' do
      expect(subject.title).to include '1234'
      expect(subject.title).to include '2010-01-01'
    end
  end
end

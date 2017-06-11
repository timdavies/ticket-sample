require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:problem) }
  it { should validate_presence_of(:resolution) }
end

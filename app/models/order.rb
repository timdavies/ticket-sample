# Represents a user's order.
class Order < ApplicationRecord
  has_many :tickets, inverse_of: :order,
                     dependent: :destroy

  def title
    "##{id} — #{created_at.to_date}"
  end
end

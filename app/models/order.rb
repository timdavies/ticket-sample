# Represents a user's order.
class Order < ApplicationRecord
  def title
    "##{id} — #{created_at.to_date}"
  end
end

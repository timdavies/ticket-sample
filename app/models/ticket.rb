# A ticket holds information related to a customer service complaint.
class Ticket < ApplicationRecord
  # List of possible problems with an order:
  PROBLEMS = {
    order_did_not_arrive: 0,
    order_incorrect:      1,
    tights_broke:         2
  }.freeze

  # Possible resolutions the customer can choose:
  RESOLUTIONS = {
    replacement:          0,
    different_item:       1,
    refund:               2
  }.freeze

  enum problem: PROBLEMS
  enum resolution: RESOLUTIONS

  belongs_to :order

  validates :email,      presence: true
  validates :problem,    presence: true
  validates :resolution, presence: true
end

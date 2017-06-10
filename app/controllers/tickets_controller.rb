# Handles creation of support tickets.
class TicketsController < ApplicationController
  before_action :set_tickets, only: :index

  def index
  end

  def new
  end

  private

  def set_tickets
    @tickets = []
  end
end

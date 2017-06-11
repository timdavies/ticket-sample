# Handles creation of support tickets.
class TicketsController < ApplicationController
  before_action :set_tickets, only: :index
  before_action :set_orders,  only: %i(new create)

  def index; end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.create(ticket_params)
    return render :new unless @ticket.persisted?
    flash[:success] = t('flashes.ticket_created')
    redirect_to tickets_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(
      :email, :order_id, :problem, :resolution, :comments
    )
  end

  def set_tickets
    @tickets = Ticket.paginate(page: params[:page])
  end

  def set_orders
    @orders = Order.all
  end
end

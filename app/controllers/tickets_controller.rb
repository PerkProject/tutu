class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ticket, only: %i(show destroy)

  def index
    @tickets = current_user.tickets
  end

  def show
  end

  def buy
    @ticket = Ticket.new(train_id:         params[:train_id],
                         start_station_id: params[:start_station_id],
                         end_station_id:   params[:end_station_id])
    current_user.tickets << @ticket
  end

  def create
    @ticket = current_user.tickets.new(ticket_params)

    if @ticket.save
      redirect_to @ticket, notice: "Спасибо за покупку!"
    else
      render :buy
    end
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, notice: "Ticket was successfully deleted."
  end


  private

  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
    redirect_to root_path, alert: "Доступ запрещён!" unless @ticket.user == current_user
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :start_station_id, :end_station_id, :passenger_name, :passport_number)
  end
end

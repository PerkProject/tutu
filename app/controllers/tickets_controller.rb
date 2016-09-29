class TicketsController < ApplicationController
  def show
    @ticket = Ticket.find(params[:id])
  end

  def buy
    @ticket = Ticket.new(train_id:         params[:train_id],
                         start_station_id: params[:start_station_id],
                         end_station_id:   params[:end_station_id])
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket, notice: "Спасибо за покупку!"
    else
      render :buy
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:train_id, :start_station_id, :end_station_id, :passenger_name, :passport_number)
  end
end

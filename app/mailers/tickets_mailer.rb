class TicketsMailer < ApplicationMailer
  def buy_ticket(ticket)
    @ticket = ticket
    @user = ticket.user
    mail(to: @user.email, subject: "Вы купили билет")
  end

  def cancel_ticket(ticket)
    @serial_number = ticket.number
    @user = ticket.user
    mail(to: @user.email, subject: "Вы удалили билет")
  end
end

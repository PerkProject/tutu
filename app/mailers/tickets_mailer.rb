class TicketsMailer < ApplicationMailer
  default from: "vk@thinknetica.com"
  layout "mailer"
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticket

    mail(to: user.email, subject: "Вы купили билет")
  end
end

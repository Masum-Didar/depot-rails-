class OrderMailer < ApplicationMailer

  default from: 'Masum Didar <depot@example.com>'


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject


  # def received(order)
  #   @order = order
  #   # @greeting = "Hi"
  #
  #   # mail to: "to@example.org"
  #   mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  # end
  def received(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    # @greeting = "Hi"
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'

    # mail to: "to@example.org"
  end
end

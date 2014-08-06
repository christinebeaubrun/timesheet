class ConfirmationMailer < ActionMailer::Base
  default from: "mhmailr@gmail.com "

  def confirmation_email(name, message, email)
    @name = name
    @message = message
    @email = "mhmailr@gmail.com"
    mail(to: "mhmailr@gmail.com" ,subject: "Sent from Timesheet app!")

  end
end
class ConfirmationMailer < ActionMailer::Base
  default from: "mhmailr@gmail.com "

  def confirmation_email(email)
      mail(to: email ,subject: "Sent from Timesheet app!")
  end
end

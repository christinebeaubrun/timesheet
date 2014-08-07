class TimesheetsController < ApplicationController
  
  def send_email
    #Employee.first.destroy
    ConfirmationMailer.confirmation_email(@name, @message, @email).deliver
    # render nothing: true, status: 200
  end
  
end

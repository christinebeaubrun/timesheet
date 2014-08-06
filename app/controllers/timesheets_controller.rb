class TimesheetsController < ApplicationController
  def new
  end

  def update
    # EMPLOYEE AND TIMESHEET HAVE ALREADY BEEN CREATED, FINDING TIMESHEET IN DATABASE
  end

  def sendemail

    # CREATE EMPLOYEE AND SAVE TIMESHEET TO EMPLOYEE
    # IF EMPLOYEE EXIST, SEARCH FOR THAT EMPLOYEE ELSE CREATE NEW EMPLOYEE
    # REDIRECT TO TIMESHEET SHOW AFTER SAVING TO DATABASE
  end

  def send_email
    ConfirmationMailer.confirmation_email(@name, @message, @email).deliver
    # render nothing: true, status: 200
  end
end

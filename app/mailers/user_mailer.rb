class UserMailer < ApplicationMailer

  default from: "user@gmail.com"

  def sendmail_confirm
    @greeting = "Hi"

    mail to: "m.nagawi@gmail.com", subject: "ActionMailer test"
  end
end

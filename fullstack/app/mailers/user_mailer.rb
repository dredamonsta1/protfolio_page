class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

    def send_contact(firstname,lastname,email,subject,message)
      @firstname = firstname
      @lastname = lastname
      @email = email
      @subject = subject
      @message = message



      mail to: 'andrefullstack@gmail.com', subject: @subject 
    end

end

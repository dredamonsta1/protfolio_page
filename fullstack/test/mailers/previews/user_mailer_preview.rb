# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/send_contact
 def send_contact
   firstname = 'joe'
   lastname = 'something'
   email = 'sample@gmail.com'
   subject = 'Site Feedback'
   message = "I viewed your site, here's a message!"
   UserMailer.send_contact(firstname,lastname,email,subject,message)
 end

end

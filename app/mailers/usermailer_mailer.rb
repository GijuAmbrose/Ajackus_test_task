class UsermailerMailer < ApplicationMailer
  default from: '<gijuambrose2@gmail.com>'
   
   def contact_email(params)
      @params = params
      mail(to: "info@ajackus.com", subject: 'Ajackus - Contact Us Email')
   end
end

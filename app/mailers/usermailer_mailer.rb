class UsermailerMailer < ApplicationMailer
  default from: '<gijuambrose2@gmail.com>'
   
   def contact_email(params)
      @params = params
      mail(to: "jijoakalarikkal@gmail.com", subject: 'Ajackus - Contact Email')
   end
end

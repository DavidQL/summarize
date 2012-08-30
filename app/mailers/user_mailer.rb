class UserMailer < ActionMailer::Base
  default from: "d6cdad1d4cdcbd9f7358@cloudmailin.net"
  
  def summary
    attachments['page.pdf'] = PdfGenerator.generate_pdf("http://www.amazon.com")
    mail(:to => "david@quickleft.com", :subject => "Test email" )
  end
end

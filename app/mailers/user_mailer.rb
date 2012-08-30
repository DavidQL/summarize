class UserMailer < ActionMailer::Base
  default from: "d6cdad1d4cdcbd9f7358@cloudmailin.net"
  
  def summary
    client = Pdfcrowd::Client.new("mjezzi", "538096745e9ed20ba1e046438c55a11b")
    pdf = client.convertURI(url)
    File.delete "page.pdf"
    File.open("page.pdf",'wb') { |f| f.write pdf }
    attachments["page.pdf"] = File.read("page.pdf")
    mail(:to => "david@quickleft.com", :subject => "Test email" )
  end
end

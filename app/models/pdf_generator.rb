require 'pdfcrowd'

class PdfGenerator

  def generate_pdf url

    begin
      # create an API client instance
      client = Pdfcrowd::Client.new("mjezzi", "538096745e9ed20ba1e046438c55a11b")
      # convert a web page and store the generated PDF into a pdf variable
      pdf = client.convertURI(url)
    rescue Pdfcrowd::Error => why
      print 'FAILED: ', why
    end

  end

end

class RequestMailer < ApplicationMailer

  def request_email

    @doc = Doc.find(params[:doc])
    attachments[@doc.main.file.filename] = { 
      :content => File.read("/tmp/temp.pdf")
    }
    mail(
      subject: 'slideboxの依頼がきたよっ',
      from: 's_riki@cone-ntm.com',
      to: 'c-slide@cone-ntm.com'
    )
  end

  def thanks_email

    @doc = Doc.find(params[:doc])
    mail(
      subject: 'slideboxのご依頼ありがとうございます',
      from: 's_riki@cone-ntm.com',
      to: @doc.user.email
    )

  end

end

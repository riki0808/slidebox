class RequestMailer < ApplicationMailer

  def request_email

    @doc = Doc.find(params[:doc])
    attachments[@doc.main.file.filename] = { 
      :content => File.read(params[:temp_path])
    }
    mail(
      subject: 'slideboxの依頼がきたよっ',
      from: ENV['USER_NAME'],
      to: 'c-slide@cone-ntm.com'
    )
  end

  def thanks_email

    @doc = Doc.find(params[:doc])
    mail(
      subject: 'slideboxのご依頼ありがとうございます',
      from: ENV['USER_NAME'],
      to: @doc.user.email
    )

  end

end

class RequestMailer < ApplicationMailer

  def request_email

    @doc = Doc.find(params[:doc])
    attachments["#{@doc.main.file.basename}.pdf"] = { 
      :content => File.read("public/#{File.dirname(@doc.main.url)}/#{@doc.main.file.basename}.pdf")
    }
    mail(
      subject: 'slideboxの依頼がきたよっ',
      from: Rails.application.credentials.gmail[:user_name],
      to: 'c-slide@cone-ntm.com'
    )
  end

  def thanks_email

    @doc = Doc.find(params[:doc])
    mail(
      subject: 'slideboxのご依頼ありがとうございます',
      from: Rails.application.credentials.gmail[:user_name],
      to: @doc.user.email
    )

  end

end

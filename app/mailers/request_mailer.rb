class RequestMailer < ApplicationMailer

  def request_email

    @doc = Doc.find(params[:doc])
    # attachments[@doc.pptx.file.filename] = { 
    #   :content => File.read("/tmp/temp.pptx")
    # }
    mail(
      subject: 'slideboxの依頼がきたよっ',
      from: 's_riki@cone-ntm.com',
      to: 'c-slide@cone-ntm.com,haru_tanaka@cone-ntm.com,tomoki_yamaguchi@cone-ntm.com,hanamaru_kumamoto@cone-ntm.com,'
    )
    logger.info("依頼メール送信完了")
  end

  def thanks_email

    @doc = Doc.find(params[:doc])
    mail(
      subject: 'slideboxのご依頼ありがとうございます',
      from: 's_riki@cone-ntm.com',
      to: @doc.user.email
    )
    logger.info("サンクスメール送信完了")
  end

end

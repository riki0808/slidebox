class DocsController < ApplicationController

  def new
    @doc = Doc.new
  end
  
  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      RequestMailer.with(doc: @doc.id).request_email.deliver_later
      RequestMailer.with(doc: @doc.id).thanks_email.deliver_later
      redirect_to root_path
    else
      redirect_to new_setting_path
    end
  end

  def edit
  end

  def update
  end

  private
  def doc_params
    params.require(:doc).permit(:user_id, :main, :sheet, :title, :size, :deadline, :detail).merge(user_id: current_user.id)
  end

end

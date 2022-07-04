class DocsController < ApplicationController

  def new
    
  end
  
  def create
  end

  def update
  end

  private
  def doc_params
    params.require(:doc).permit(:user_id, :main, :sheet, :title, :deadline, :detail)
  end

end

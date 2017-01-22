class DocumentsController < ApplicationController

  before_action :authenticate_user!

  def show
    @document = Document.find(params[:id])

    send_file @document.document.path, :type => @document.document_content_type, :disposition => 'inline'
  end

end
class AttachmentsController < ApplicationController

  def show
    @attachment = Attachment.find(params[:id])
    send_file @attachment.file.path, :disposition  =>  'attachment', :type => @attachment.file_content_type
  end
end

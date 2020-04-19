class MainController < ApplicationController
  def index
    if params.include?(:contactinformation)
      Submission
        .new(:title => params[:talktitle].strip!, :description => params[:talkdescription].strip!, :contact => params[:contactinformation].strip!)
        .save

      @success = true
    end
  end
end

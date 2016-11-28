class AdminuploadController < ApplicationController

  def new
    @adminupload = Adminupload.all
  end
end

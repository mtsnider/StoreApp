class AdminuploadController < ApplicationController

  def form
    @Adminupload = Adminupload.all
  end
end

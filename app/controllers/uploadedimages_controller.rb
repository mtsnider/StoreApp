class UploadedimagesController < ApplicationController



  def uploadedimage_params
    params.require(:uploadedimage).permit(:image)
  end

end

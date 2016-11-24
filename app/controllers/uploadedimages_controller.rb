class UploadedimagesController < ApplicationController
  def Uploadedimage_params
    params.require(:uploadedimage).permit(:image)
  end

end

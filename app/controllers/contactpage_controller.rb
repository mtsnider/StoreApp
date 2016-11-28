class ContactpageController < ApplicationController
  def contact
    @contact = Contactpage.all
  end
end

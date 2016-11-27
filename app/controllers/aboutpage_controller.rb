class AboutpageController < ApplicationController
  def about
    @aboutpages = Aboutpage.all
  end
end

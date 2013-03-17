class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :glvls

  def glvls
    Level.all(:order => "num ASC")
  end

end

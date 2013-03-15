class GamesController < ApplicationController

  def index
    @levels = Level.all(:order => "created_at ASC")


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @levels }
    end
  end

end

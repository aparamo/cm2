class GamesController < ApplicationController

  def index
    @levels = Level.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @levels }
    end
  end

end

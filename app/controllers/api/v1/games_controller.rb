class Api::V1::GamesController < ApplicationController

  def index
    pic = PhotoFacade.get_image
  end

end
class Api::V1::GamesController < ApplicationController

  def index

    pic = PhotoFacade.get_image



    gif =  GiphyFacade.insulting_gif(phrase)


  end

end
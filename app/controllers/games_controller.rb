class GamesController < ApplicationController

  def index


    gif =  GiphyFacade.insulting_gif(phrase)

  end

end
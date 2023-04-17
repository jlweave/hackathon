class GiphyFacade
  def self.insulting_gif(phrase)
    gifs = GiphyService.return_insulting_gif(phrase)
    # require 'pry';binding.pry
  end
end
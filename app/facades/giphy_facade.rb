class GiphyFacade
  def self.insulting_gif(phrase)
    gifs = GiphyService.return_insulting_gif(phrase)
    
    data = gifs[:data].map { |g| Giphy.new(g) }
    
    
    require 'pry';binding.pry
  end
end


class GiphyFacade
  def self.insulting_gif(phrase)
    gifs = GiphyService.return_insulting_gif(phrase)
    
    gifs.map do |g|
      Giphy.new(g)
    end
    
    require 'pry';binding.pry
  end
end


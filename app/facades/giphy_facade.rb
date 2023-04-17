class GiphyFacade
  def self.insulting_gif(phrase)
    gifs = GiphyService.return_insulting_gif(phrase)
    
    data = gifs[:data].map { |g| Giphy.new(g) }
    
    ratings = ['r','pg13','pg']
    
    best_gifs = data.select do |d|
      # require 'pry';binding.pry     
      return d if ratings.include?(d.rating)
    end

    require 'pry';binding.pry
    unless best_gifs.empty?
      return data.sample
    else
      return best_gifs
    end
  end
end


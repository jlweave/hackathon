class GiphyFacade
  def self.insulting_gif(phrase)
    gifs = GiphyService.return_insulting_gif(phrase)
    
    data = gifs[:data].map { |g| Giphy.new(g) }
    
    ratings = ['r','pg13','pg']
    
    best_gifs = data.select { |d| return d if ratings.include?(d.rating) }

    # require 'pry';binding.pry
    if best_gifs.empty?
      return data.sample
    else
      return best_gifs
    end
  end
end


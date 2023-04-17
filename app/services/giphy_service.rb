class GiphyService
  def self.return_insulting_gif(phrase)
    response = conn.get('/gifs/search') do |s|
      s.params['q'] = phrase
      s.params['rating'] = 'r'
      s.params['limit'] = 5
    end
    # if response.status == 200
    require 'pry';binding.pry
      parse_json(response)

  end


  def self.conn
    conn = Faraday.new('https://api.giphy.com/v1') do |f|
      f.params['api_key'] = ENV['sa_giphy_api_key']
      f.params['lang']    = 'en'
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body,symbolize_names: true)
  end
end
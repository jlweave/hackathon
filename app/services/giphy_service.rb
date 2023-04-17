class GiphyService
  def self.return_insulting_gif(phrase)
    response = conn.get('/v1/gifs/search') do |s|
      s.params['api_key'] = ENV['sa_giphy_api_key']
      s.params['q']       = phrase
      s.params['rating']  = 'r'
      s.params['limit']   = 5
      s.params['lang']    = 'en'
    end
    parse_json(response)

  end


  def self.conn
    Faraday.new('https://api.giphy.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body,symbolize_names: true)
  end
end
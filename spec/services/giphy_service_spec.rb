require 'rails_helper'

RSpec.describe 'Giphy Service' do
  describe 'Successful response' do
    before(:each) do
    end
    
    it 'has a giphy response' do
      
      phrase = "You're impossible to underestimate"
      json_response = File.read('spec/fixtures/griphy/good_response.json')
      stub_request(:get, "https://api.giphy.com/v1/gifs/search?")
      .with(query: {"api_key" => ENV['sa_giphy_api_key'], "lang" => 'en', "rating" => 'r', "limit"=> '5', "q" => phrase})
      .to_return(status: 200, body: json_response) 
      
      response =  response =  JSON.parse(json_response, symbolize_names: true)

      require 'pry';binding.pry
    end

  end
end
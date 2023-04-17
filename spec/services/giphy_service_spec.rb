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
      # require 'pry';binding.pry
      expect(response).to be_a(Hash)
      expect(response[:data]).to be_a(Array)
      expect(response[:data].count).to be <= (5)
      
      response[:data].each do |r|
        # require 'pry';binding.pry
        expect(r).to have_key(:type)
        expect(r[:type]).to eq("gif")
      
        expect(r).to have_key(:url)
        expect(r[:url]).to be_a(String)

        expect(r).to have_key(:rating)
        expect(r[:rating]).to be_a(String)
      end
    end
  end
end
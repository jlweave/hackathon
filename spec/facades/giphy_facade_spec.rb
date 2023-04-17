require 'rails_helper'

describe 'Giphy Facade' do


  response = GiphyFacade.insulting_gif("The gene pool needs a lifeguard because of you.")
  require 'pry';binding.pry
end
class Giphy
  attr_reader :url, :rating
  def initialize(data)
    @url = data[:url]
    @rating = data[:rating]
  end
end
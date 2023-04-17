class Picture 
    attr_reader :description, :url
    def initialize(data)
        @url = data[:urls][:raw]
    end
end
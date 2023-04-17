class PhotoService
    def self.get_image
      response = conn.get
      data = JSON.parse(response.body, symbolize_names: true)
      end
    def self.conn
        Faraday.new(url: 'https://api.unsplash.com/photos/random') do |faraday|
          faraday.params["client_id"] = '0VSQm7HhiUi_g16im9LH4Baojh9wkNX_h93yCjGBtFQ'
          faraday.params["page"] = "1"
          faraday.params["per_page"] = "1"
        end
      end
end
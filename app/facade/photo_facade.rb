class PhotoFacade
    def self.get_image
       
      data = PhotoService.get_image
      Picture.new(data)
      
    end
  end
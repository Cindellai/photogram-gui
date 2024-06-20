class PhotosController < ActionController::Base
  
  def index
    #get all photos
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })

    render({ :template => "photo_templates/index"})
  end

  
end 
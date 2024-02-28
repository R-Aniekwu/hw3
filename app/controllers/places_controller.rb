class PlacesController < ApplicationController
  def index
    @places = Place.all
  end
  
  def show
    @place = Place.find_by({"id" => params["id"]})
  end

  def new
    @place = Place.new
  end

  def edit
    @place = Place.find_by({ "id" => params["id"] })
    @place.save
    redirect_to "/places/#{@place["id"]}"
  end

  def update
    @place = Place.find_by({ "id" => params["id"] })
    @place.save
    redirect_to "/places/#{@place["id"]}"
  end

  def create
    @place = Place.new

    # assign name to a new place (user-entered)
    @place["name"] = params["name"]
  
    
    @place.save

    # redirect user if query not found
    redirect_to "/places/#{@place["id"]}"
  end



end

class PlacesController < ApplicationController
  def index
    @place = Place.all
    # render/show entire list of places on the index page
  end
  
  def show
    @place = Place.find_by({"id" => params["id"]})
    # render/show details of a specific place
  end

  def new
    @place = Place.new
    # render contacts/new view with new Contact form
  end

  def create
    # start with a new Contact
    @place = Place.new

    # assign name to a new place (user-entered)
    @place["name"] = params["name"]
  
    # assign relationship between place and journal entry
    
    # save Contact row
    @place.save

    # redirect user if query not found
    redirect_to "/places/#{@place["id"]}"
  end



end

class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @entry["place_id"] = params["place_id"]
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry.save
    redirect_to "/places"
  end
end

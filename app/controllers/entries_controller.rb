class EntriesController < ApplicationController

  def index 
    @entries = Entry.all 
  end 
  
  def new 
    @entry = Entry.new 
    @entry["place_id"]=params["place_id"]
  end 

  def create
    # new contact
    @entry = Entry.new
    
    # assign user-entered form data to entry column
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["date"] 
    
    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    # save & redirect
    @entry.save 
    redirect_to "/places"
  end
end

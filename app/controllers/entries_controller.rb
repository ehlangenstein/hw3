class EntriesController < ApplicationController

  def index 
    @entries = Entry.all 
  end 
  
  def new 
    @entry = Entry.new 
  end 

  def create
    @entry = Entry.new(params["entry"])
    @entry.save 
  end
end

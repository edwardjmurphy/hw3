class PlacesController < ApplicationController

def index
@places = Place.all
end

def new
    @place = Place.new
end

def create
    @place = Place.new
    @place["city"] = params["place"]["city"]
    @place.save
    redirect_to "/places"
end

def show
    @place = Place.find_by({ "id" => params["id"] })
    @posts = Post.where({ "place_id" => @place["id"] })
end

end

class PostsController < ApplicationController
end


def new
    @post = Post.new
    @place = Place.find_by({ "id" => params["place_id"] })
    @post["place_id"] = @place["id"]
end

def create
    @post = Post.new
   

    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    @post["posted_on"] = params["post"]["posted_on"]
    @contact["place_id"] = params["post"]["place_id"]
    @post.save
    redirect_to "/places"
end
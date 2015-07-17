  
get "/edit_photo" do
    erb :"/edit/edit_photo"
end

get "/save_photo" do
  @entry = Photo.find(params["id"].to_i)
  @entry.title = params["title"]
  @entry.lighting = params["lighting"]
  @entry.location = params["location"]
  @entry.photographer_id = params["photographer_id"]
  @entry.save(params["id"].to_i)

  "success"
end

get "/edit_photographer" do
    erb :"/edit/edit_photographer"
end

get "/save_photographer" do
  @entry = Photographer.find(params["id"].to_i)
  @entry.name = params["name"]
  @entry.save(params["id"].to_i)

  "success"
end

get "/edit_album" do
    erb :"/edit/edit_album"
end

get "/save_album" do
  @entry = Album.find(params["id"].to_i)
  @entry.title = params["title"]
  @entry.save(params["id"].to_i)

  "success"
end
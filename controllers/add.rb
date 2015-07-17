get "/add_photographer" do
  erb :"add/add_photographer"
end

get "/save_photographer" do
  @new_entry = Photographer.create({"name" => params["name"]})
  return "Success!"
end

get "/add_photo" do
  erb :"add/add_photo_form"
end

get "/save_photo" do
  @new_entry = Photo.create({"title" => params["title"], "lighting" => params["lighting"], "location" => params["location"], "photographer_id" => params["photographer_id"]})
  return "Success!"
end

get "/add_album" do
  erb :"add/add_album"
end

get "/save_album" do
  @new_entry = Album.create({"title" => params["title"]})
  return "Success!"
end


get "/delete_photographer_list/:x" do
  erb :"delete/delete_photographer_list"
end

get "/delete_photographer/:x" do
  @d = Photographer.find("id" => params["x"].to_i)
  @d.delete
  return "Success!"
end

get "/delete_photo_list/:x" do
  erb :"delete/delete_photo_list"
end

get "/delete_photo/:x" do
  @d = Photo.find("id" => params["x"].to_i)
  @d.delete
  return "Success!"
end

get "/delete_album_list/:x" do
  erb :"delete/delete_album_list"
end

get "/delete_album/:x" do
  @d = Album.find("id" => params["x"].to_i)
  @d.delete
  return "Success!"
end
get "/home" do
  erb :"/homepage"
end

get "/add_menu" do
    erb :"/main/add_menu"
end

get "/edit_menu" do
    erb :"/main/edit_menu"
end

get "/view_menu" do
    erb :"/main/view_menu"
end

get "/delete_menu" do
    erb :"/main/delete_menu"
end
# might be able to have the other form save here






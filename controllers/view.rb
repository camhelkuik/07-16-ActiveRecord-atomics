
get "/view" do
    erb :"/view_list"
end

get "/view_individual/:x" do
  @view = Products.find(params["x"].to_i)
  erb :"/view_individual"
end
get "/delete" do
   erb :"/delete_form"
end

get "/delete_save" do
  Products.delete(params["id"].to_i)
  @delete = true
    erb :"/view"
end
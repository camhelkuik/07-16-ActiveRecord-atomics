  
get "/edit" do
    erb :"/edit_form"
end

get "/edit_save" do
  @entry = Products.find(params["id"].to_i)
  @entry.general_info = params["general_info"]
  @entry.technical_specs = params["technical_specs"]
  @entry.where_to_buy = params["where_to_buy"]
  @entry.save(params["id"].to_i)
  #send shit to the db
  "success"
end
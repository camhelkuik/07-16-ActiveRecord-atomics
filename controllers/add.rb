get "/add_photographer" do
  
end

get "/add_save" do
  #send shit to the db
  @new_entry = Products.add({"general_info" => params["general_info"], "technical_specs" => params["technical_specs"],
     "where_to_buy" => params["where_to_buy"]})
  "success"
end
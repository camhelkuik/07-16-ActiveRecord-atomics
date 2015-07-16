class Album < ActiveRecord :: Base
  
  unless ActiveRecord::Base.connection.table_exists?(:albums)
    ActiveRecord::Base.connection.create_table :albums do |t|
      t.string :title
    end  
  end
  
end
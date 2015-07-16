class Photo < ActiveRecord :: Base
  
  unless ActiveRecord::Base.connection.table_exists?(:photos)
    ActiveRecord::Base.connection.create_table :photos do |t|
      t.string :title
      t.string :lighting
      t.string :location
      t.integer :photographer_id
    end  
  end
  
end
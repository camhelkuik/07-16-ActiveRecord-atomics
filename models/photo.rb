class Photo < ActiveRecord::Base
  
  has_and_belongs_to_many :album
  
  validates :title, presence: true
    
  def top_photo    
    if (self.album.length >= 3)
      true
    else
      false
    end
  end
end
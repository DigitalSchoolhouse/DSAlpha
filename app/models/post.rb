class Post < ActiveRecord::Base
  belongs_to :user
  
  image_accessor :image
  
end
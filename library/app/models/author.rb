class Author < ActiveRecord::Base
    schema do
     integer 'id'
     string 'name', 'biography', 'dob', 'nationality',  'awards', 'image_url'
   end
   has_many :books
end

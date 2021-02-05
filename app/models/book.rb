class Book < ApplicationRecord
	def self.search(search)

		where("book_name  LIKE ?", "%#{search}%")
     
    end
    
end

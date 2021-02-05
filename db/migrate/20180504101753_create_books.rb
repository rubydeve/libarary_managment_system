class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|

    	t.string :book_name
    	t.string :author
    	t.string :publisher
    	t.string :bill_number
    	t.datetime :date_of_publishing
      t.datetime :edition
      t.string :price
      t.string :description


      t.timestamps
    end
  end
end

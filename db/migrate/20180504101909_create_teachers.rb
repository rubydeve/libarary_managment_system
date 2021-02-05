class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
    	t.string :name
    	t.string :department
    	t.string :address
    	t.string :telephone_number
    	t.string :teacher_id

      t.timestamps
    end
  end
end

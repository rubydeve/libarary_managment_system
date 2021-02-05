class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|

    	t.string :name
    	t.string :roll_no
    	t.string :address
    	t.string :course
    	t.datetime :date_time

      t.timestamps
    end
  end
end

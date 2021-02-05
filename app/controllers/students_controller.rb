class StudentsController < ApplicationController
private

   def new_params
        params.require(:student).permit(:name, :roll_no, :address, :course, :date_time)
   end
end

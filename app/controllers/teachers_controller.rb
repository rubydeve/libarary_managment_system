class TeachersController < ApplicationController
	 def new_params
        params.require(:teacher).permit(:name, :department, :address, :telephone_number, :teacher_id)
    end
end

class TasksController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(id: current_user.id)
		@user.projects.build(project_params)
		#debugger
		if@user.save
		flash[:success] = "Successfully Created the Project"
		redirect_to user_path(current_user)
	else
		render 'new'
	end



	def project_params
		   params.require(:user).permit(:name,:s_date,:e_date)
		  end
 end
end


class StudentController < ApplicationController

	def show
		@student = Student.find(params[:id])
		@projects = @student.projects
		render :show
	end

	def comprehension
		@student = Student.find(params[:id])
		render :comp
	end

	def projects
		render :projects
	end

	def new
		  student_params = params.require(:student).permit(:cohort_id, :github_username, :name)
	      p student_params
	 	  student = Student.create(student_params)
	      redirect_to "/student/#{student.id}/show"
	end

	def edit 
		student_params = params.require(:student).permit(:cohort_id, :github_username, :name)
		Student.update(params[:id], student_params )
		redirect_to "/student/#{params[:id]}/show"
	end


end

class StudentController < ApplicationController

def show
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

end

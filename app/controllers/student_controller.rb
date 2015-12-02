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

end

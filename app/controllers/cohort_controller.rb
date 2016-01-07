class CohortController < ApplicationController


def index
	@cohorts = Cohort.where({:archived => false || nil})
	@cohort = Cohort.new
	render :index
end

def new
      cohort_params = params.require(:cohort).permit(:name, :subject)
      p cohort_params
 	  cohort = Cohort.create(cohort_params)
      redirect_to "/cohort/#{cohort.id}/show"
    
end

def show
	@klass = Cohort.find(params[:id])
	@attendance_data = @klass.attendances
	@cohort_id = @klass.id
	@cohort = @klass.students
	render :show
end

def data
    @cohort = Cohort.find(params[:id])
	render :data
end

def attendance
	klass = Cohort.find(params[:id])
	@cohort_id = klass.id
	@cohort = klass.students
	render :attendance
end

def homework
	klass = Cohort.find(params[:id])
	@cohort_id = klass
	@cohort = klass.students
	render :homework
end

def attendance_log
	# at this route params[:id] will be cohort_id 
	# params[:sid] will be student_id
	# will write a check for :sid == "all" to update all students
end

def studentsShow
	@student = Student.new
	klass = Cohort.find(params[:id])
	@cohort_id = klass.id
	@cohort = klass.students
	render :studentsShow
end

def archived
	@cohorts = Cohort.where({:archived => true})
end




end

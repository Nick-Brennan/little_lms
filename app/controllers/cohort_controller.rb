class CohortController < ApplicationController


def index
	@cohort = Cohort.find(params[:id])
	render :index
end

def show
	klass = Cohort.find(params[:id])
	@cohort_id = klass
	@cohort = klass.students
	render :show
end

def data
    @cohort = Cohort.find(params[:id])
	render :data
end

def attendance
	klass = Cohort.find(params[:id])
	@cohort_id = klass
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



end

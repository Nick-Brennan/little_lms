
class CohortController < ApplicationController
include CohortHelper

def show
	klass = Cohort.find(params[:id])
	@cohort = klass.students
	render :show
end

def data

	render :data
end

def attendance
	klass = Cohort.find(params[:id])
	@cohort = klass.students
	render :attendance
end

def homework
	render :homework
end

def attendance_log
	# at this route params[:id] will be cohort_id 
	# params[:sid] will be student_id
	# will write a check for :sid == "all" to update all students
end



end

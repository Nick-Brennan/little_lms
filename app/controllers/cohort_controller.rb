
class CohortController < ApplicationController

def show
	# using "Student.Where" because Cohort.students was not working for me in rails c. Need to debug later.
	@cohort = Student.where({cohort_id: params[:id]})
	render :show
end

def data
	render :data
end

def attendance
	render :attendance
end

def homework
	render :homework
end

end

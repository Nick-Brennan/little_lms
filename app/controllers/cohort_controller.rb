
class CohortController < ApplicationController

def show
	klass = Cohort.find(params[:id])
	$cohort = klass.students
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

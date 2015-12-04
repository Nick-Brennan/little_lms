module ApplicationHelper
 
 def controller?(*controller)
    controller.include?(params[:controller])
  end 

  def action?(*action)
    @current_action = action.include?(params[:action])
  end

  def not_current_page
  	binding.pry
  	current_page?(params[:action]) != @current_action
  end


  # def cohort_current
  # 	@current_cohort = current_cohort
  # end
end

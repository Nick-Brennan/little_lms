class AddCohortNameToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :cohort_name, :string
  end
end

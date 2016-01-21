class RemoveStudentsIdFromHomeworks < ActiveRecord::Migration
  def change
    remove_column :homeworks, :students_id, :integer
    remove_column :homeworks, :student_self_assessment, :string
    add_column :homeworks, :self_assessment, :float
  end
end
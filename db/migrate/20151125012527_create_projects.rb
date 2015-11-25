class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_submission
      t.string :link
      t.string :teacher_assessment

      t.timestamps null: false
    end

    create_table :students_projects, id: false do |t|
      t.belongs_to :student, index: true
      t.belongs_to :project, index: true
    end 
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_submission
      t.string :link
      t.string :teacher_assessment

      t.timestamps null: false
    end
  end
end

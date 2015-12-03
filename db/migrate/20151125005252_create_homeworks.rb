class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :hw_submission
      t.string :skill
      t.string :student_self_assessment
      t.integer :student_id
      t.belongs_to :students, index: true
      t.timestamps null: false
    end
  end
end

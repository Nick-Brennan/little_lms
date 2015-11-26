class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :cohort_id
      t.integer :student_id
      t.integer :present
      t.string :date
      t.belongs_to :student, index: true
      t.timestamps null: false
    end
  end
end

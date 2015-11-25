class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :github_username
      t.integer :cohort_id
      t.belongs_to :cohort, index:true

      t.timestamps null: false
    end
  end
end

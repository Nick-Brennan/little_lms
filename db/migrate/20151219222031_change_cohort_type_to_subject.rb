class ChangeCohortTypeToSubject < ActiveRecord::Migration
  def self.up
  	change_table(:cohorts) do |t|
  		t.rename :type, :subject
  	end
  end
end

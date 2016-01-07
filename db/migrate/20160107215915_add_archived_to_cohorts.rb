class AddArchivedToCohorts < ActiveRecord::Migration
  def change
    add_column :cohorts, :archived, :boolean
  end
end

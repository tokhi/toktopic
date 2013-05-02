class AddProjectIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :project_id, :integer
  end
end

class AddCourseIdToSemesters < ActiveRecord::Migration
  def change
    add_column :semesters, :course_id, :integer
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.int :type

      t.timestamps
    end
  end
end

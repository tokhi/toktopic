class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name
      t.string :department
      t.text :description

      t.timestamps
    end
  end
end

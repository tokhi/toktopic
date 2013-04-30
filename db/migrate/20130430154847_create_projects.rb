class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :date
      t.text :protocol

      t.timestamps
    end
  end
end
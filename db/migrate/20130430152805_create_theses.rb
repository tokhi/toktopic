class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.text :description
      t.text :abstract
      t.date :year
      t.text :bibliography

      t.timestamps
    end
  end
end

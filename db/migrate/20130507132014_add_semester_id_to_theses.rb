class AddSemesterIdToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :semester_id, :integer
  end
end

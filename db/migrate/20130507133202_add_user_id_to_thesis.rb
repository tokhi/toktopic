class AddUserIdToThesis < ActiveRecord::Migration
  def change
    add_column :theses, :user_id, :integer
  end
end

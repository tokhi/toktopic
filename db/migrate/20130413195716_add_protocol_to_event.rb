class AddProtocolToEvent < ActiveRecord::Migration
  def change
    add_column :events, :protocol, :text
  end
end

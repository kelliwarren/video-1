class AddColumnsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :name, :string
    add_column :rooms, :sessionId, :string

  end
end

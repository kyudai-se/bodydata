class AddColumnName < ActiveRecord::Migration
  def change
    add_column :bodydata, :name, :string, :limit => 20
  end
end

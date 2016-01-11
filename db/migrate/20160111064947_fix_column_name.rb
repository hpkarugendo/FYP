class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :employees, :type, :position
  end
end

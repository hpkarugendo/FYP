class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :code
      t.string :name
      t.string :email
      t.string :phone
      t.string :type

      t.timestamps
    end
  end
end

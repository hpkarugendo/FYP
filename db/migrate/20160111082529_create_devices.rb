class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :mac
      t.references :employee, index: true

      t.timestamps
    end
  end
end

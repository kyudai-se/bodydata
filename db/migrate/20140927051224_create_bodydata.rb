class CreateBodydata < ActiveRecord::Migration
  def change
    create_table :bodydata do |t|
      t.string :weight
      t.decimal :
      t.string :height
      t.decimal :

      t.timestamps
    end
  end
end

class CreateBodydata < ActiveRecord::Migration
  def change
    create_table :bodydata do |t|
      t.decimal :weight
      t.decimal :height
      t.timestamps
    end
  end
end

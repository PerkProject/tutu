class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end

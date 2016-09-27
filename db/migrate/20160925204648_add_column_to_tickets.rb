class AddColumnToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :number, :string
    add_column :tickets, :passenger_name, :string
    add_column :tickets, :passport_number, :string
    add_reference :tickets, :user, index: true, foreign_key: true
    add_reference :tickets, :train, index: true, foreign_key: true
  end
end

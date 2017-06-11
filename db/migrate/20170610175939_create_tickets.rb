class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :email
      t.references :order, foreign_key: true
      t.integer :problem
      t.integer :resolution
      t.text :comments

      t.timestamps
    end
  end
end

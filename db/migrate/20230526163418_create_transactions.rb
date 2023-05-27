class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.datetime :date_and_time
      t.integer :type
      t.decimal :currency_rate, precision: 10, scale: 2
      t.text :comment
      t.references :account, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

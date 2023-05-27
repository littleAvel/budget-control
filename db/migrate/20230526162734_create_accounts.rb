class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2
      t.bigint :owner_id
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end

class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :budget_name
      t.bigint :owner_id

      t.timestamps
    end
  end
end

class CreateUserBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :user_budgets do |t|
      t.references :user, foreign_key: true
      t.references :budget, foreign_key: true

      t.timestamps
    end
  end
end

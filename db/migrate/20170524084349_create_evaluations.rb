class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.references :assignment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

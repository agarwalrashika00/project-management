class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.references :task
      t.references :runner
      t.references :assigner
      t.integer :state

      t.timestamps
    end
  end
end

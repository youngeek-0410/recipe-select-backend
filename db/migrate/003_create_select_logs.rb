class CreateSelectLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :select_logs do |t|
      t.timestamps

      t.references :user, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
    end
  end
end

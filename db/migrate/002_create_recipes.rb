class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :site_link
      t.timestamps

      t.references :user, null: false, foreign_key: true
    end
  end
end

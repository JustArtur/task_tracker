class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.text :tittle
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end

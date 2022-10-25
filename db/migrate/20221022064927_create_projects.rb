class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.text :tittle
      t.text :body
      t.integer :user_id
      t.integer :id, index: true
      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.text :tittle
      t.text :body
      t.integer :project_id
      t.timestamps
    end
  end
end

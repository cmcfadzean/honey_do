class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.integer :sort

      t.timestamps
    end
  end
end

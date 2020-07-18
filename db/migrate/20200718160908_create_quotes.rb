class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.references :project, foreign_key: true
      t.string :company
      t.string :price
      t.string :website
      t.string :phone
      t.text :notes

      t.timestamps
    end
  end
end

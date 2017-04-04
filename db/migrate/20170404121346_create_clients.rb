class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document
      t.string :email
      t.string :phone
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end

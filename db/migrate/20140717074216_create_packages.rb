class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :email
      t.string :address
      t.text :details
      t.integer :stay
      t.integer :budget
      t.text :places
      t.text :activities

      t.timestamps
    end
  end
end

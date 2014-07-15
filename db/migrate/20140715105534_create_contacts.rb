class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :body
      t.integer :phnumber

      t.timestamps
    end
  end
end

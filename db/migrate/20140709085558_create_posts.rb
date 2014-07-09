class CreatePosts < ActiveRecord::Migration
  def change
    if (!ActiveRecord::Base.connection.tables.include?("posts"))
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
  end
  end

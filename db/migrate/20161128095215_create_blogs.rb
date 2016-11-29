class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :body, :null => false, :default => ""
      t.integer :like, :null => false, :default => 0

      t.timestamps
    end
  end
end

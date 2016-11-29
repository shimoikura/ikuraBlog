class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.integer :blog_id , :null => false, :default => 0
      t.string :comment, :null => false, :default => ""

      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :body
      t.integer :blog_id

      t.timestamps
    end
  end
end

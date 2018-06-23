class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.string :status
      t.integer :entry_id

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.references :article, index: true
      t.timestamps null: false
    end
  end
end

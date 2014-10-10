class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string      :title, null: false, default: ""
      t.text        :body
      t.string      :category, null:false, default: "Uncategorized"
      
      t.references  :user, index: true
      t.timestamps
    end
  end
end

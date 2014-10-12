class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :label
      t.belongs_to :article, index: true

      t.timestamps
    end
  end
end

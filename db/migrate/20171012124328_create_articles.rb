class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.string :link
      t.integer :user_id
    end
  end
end

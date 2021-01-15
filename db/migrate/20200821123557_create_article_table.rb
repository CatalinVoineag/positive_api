class CreateArticleTable < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :image_url, null: false
      t.string :type_of_article, null: false
    end
  end
end

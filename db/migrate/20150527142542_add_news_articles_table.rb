class AddNewsArticlesTable < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :title
      t.text :text
      t.string :category
      t.attachment :file
      t.timestamps
    end
  end
end

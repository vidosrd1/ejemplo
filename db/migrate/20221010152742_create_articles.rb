class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :name
      t.date :publish

      t.timestamps
    end
  end
end

class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.string :title
      t.string :slug

      t.timestamps null: false
    end
  end
end

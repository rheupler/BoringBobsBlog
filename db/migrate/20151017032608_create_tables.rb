class CreateTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :string
      t.column :tag_id, :integer

      t.timestamps
    end

    create_table :tags do |t|
      t.column :name, :string

      t.timestamps
    end

    create_table :posts_tags do |t|
      t.column  :post_id, :integer
      t.column  :tag_id, :integer

      t.timestamps
    end
  end
end

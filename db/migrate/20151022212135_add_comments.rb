class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :sentence, :string
      t.column :user_id, :integer
      t.column :post_id, :integer

      t.timestamps
    end
  end
end

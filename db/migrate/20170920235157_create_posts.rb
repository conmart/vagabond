class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :message

      t.timestamps

      t.belongs_to :city
      t.belongs_to :user
    end
  end
end

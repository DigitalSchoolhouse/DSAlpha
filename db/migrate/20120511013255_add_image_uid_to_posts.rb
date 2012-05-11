class AddImageUidToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image_uid, :string

  end
end

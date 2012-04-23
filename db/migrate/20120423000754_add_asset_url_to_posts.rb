class AddAssetUrlToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :asset_url, :string

  end
end

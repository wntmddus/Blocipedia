class AddPublishedAtToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :published_at, :datetime
  end
end

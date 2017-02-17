class AddPublishedToWikis < ActiveRecord::Migration[5.0]
  def change
    add_column :wikis, :published, :boolean, default: false
  end
end

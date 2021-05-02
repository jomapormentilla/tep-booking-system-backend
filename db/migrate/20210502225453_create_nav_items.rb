class CreateNavItems < ActiveRecord::Migration[6.1]
  def change
    create_table :nav_items do |t|
      t.string :name
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end

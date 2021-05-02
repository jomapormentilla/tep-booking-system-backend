class CreateRoomData < ActiveRecord::Migration[6.1]
  def change
    create_table :room_data do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.string :introduction
      t.string :mission

      t.timestamps
    end
  end
end

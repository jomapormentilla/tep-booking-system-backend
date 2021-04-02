class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :customer
      t.string :room
      t.string :voucher
      t.string :comment
      t.string :referral
      t.decimal :total, :precision => 8, :scale => 2
      t.integer :group_size
      t.datetime :event_date
      t.boolean :private
      t.boolean :available

      t.timestamps
    end
  end
end

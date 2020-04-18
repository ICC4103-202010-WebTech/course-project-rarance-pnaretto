class CreateEventComments < ActiveRecord::Migration[6.0]
  def change
    create_table :event_comments do |t|
      t.text :message
      t.string :image

      t.timestamps
    end
  end
end

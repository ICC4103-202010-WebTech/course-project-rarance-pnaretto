class CreateMsgs < ActiveRecord::Migration[4.2]
  def change
    create_table :msgs do |t|
      t.text :body
      t.references :conversation, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :profile_photo
      t.string :location
      t.boolean :admin
      t.datetime :last_acces

      t.timestamps
    end
  end
end

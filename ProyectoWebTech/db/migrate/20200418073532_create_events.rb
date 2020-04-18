class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :ubication
      t.text :description
      t.string :bannerPhoto
      t.boolean :public
      t.string :decition
      t.integer :min_vote
      t.datetime :start_voting
      t.datetime :finish_voting

      t.timestamps
    end
  end
end

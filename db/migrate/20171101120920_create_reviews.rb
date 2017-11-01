class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :content, null: false
      t.integer :rating, null: false
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

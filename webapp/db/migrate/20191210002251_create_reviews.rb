class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :professor_name
      t.integer :overall_rating
      t.integer :professor_rating
      t.integer :difficulty_rating
      t.string :language
      t.boolean :textbook_req
      t.boolean :computer_req
      t.integer :presentations
      t.integer :tests
      t.integer :essays
      t.text :comment
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

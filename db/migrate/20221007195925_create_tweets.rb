class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.belongs_to :monster, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end

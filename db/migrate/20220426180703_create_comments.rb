class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :photo, type: :bigint, foreign_key: true
      t.text :comment
      t.timestamps
    end
  end
end

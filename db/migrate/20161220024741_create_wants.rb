class CreateWants < ActiveRecord::Migration[5.0]
  def change
    create_table :wants do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :summary
      t.text :fulldeets

      t.timestamps
    end
  end
end

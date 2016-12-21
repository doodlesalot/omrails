class AddDeetsToWants < ActiveRecord::Migration[5.0]
  def change
    add_column :wants, :fulldeets, :text
  end
end
